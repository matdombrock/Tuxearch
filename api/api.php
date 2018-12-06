<?php
//OLD PHP API, DEPRECEDATED 
include 'creds.php';

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$query = $_GET["q"] ?? "ssh copy id";
$terms = explode(" ", $query);
$likes = "";
foreach ($terms as &$value){
    $value = $conn->real_escape_string($value);
    $likes .= "info LIKE '%".$value."%' OR command LIKE '%".$value."%' OR tags LIKE '%".$value."%'";
    $likes .= " OR ";
}
$likes = substr($likes, 0, -4);

$sql = "SELECT * FROM cli.commands WHERE ".$likes." ORDER BY INFO,COMMAND,TAGS";
//print $sql;
$result = $conn->query($sql);

$rows = array();
$scores = array();
while($r = mysqli_fetch_assoc($result)) {
    $rows[] = $r;
    $score = 0;
    foreach($r as &$list){
        $content = explode(" ", $list);
        foreach($content as &$word){
            foreach($terms as &$word2){
                if(strtolower($word)==strtolower($word2)){
                    $score = $score +1;            
                }
            }    
        }
    }
    $scores[] = array("score"=>$score, "info"=>$r["INFO"],"command"=>$r["COMMAND"],"tags"=>$r["TAGS"]);
}
usort($scores, function($x, $y) {
    if ($x == $y)
    return 0;
    else if ($x < $y)
    return 1;
    else
    return -1;
});
print json_encode($scores);
$conn->close();
?>
