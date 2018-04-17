function showResult(str) {
  document.getElementById("tuximg").src="img/tux2.png";
  if (str.length==0) {
    document.getElementById("livesearch").innerHTML="";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
        var obj = JSON.parse(this.responseText);
        console.log(obj);
        var output = "";
        var i = 0;
        obj.forEach(function(cmd){
            output += "<div class='result'>";
            output += "<div class='result-tile'>"+obj[i].INFO+"<span class='star-wrap'>"+obj[i].POINTS+"<span class='star'>&#9733;</span></span> </div>";
            output += "<xmp class='result-command'>" + obj[i].COMMAND+"</xmp>";
            output += "<div class='tags'>"+obj[i].TAGS+"</div>";
            output += "</div>";
            i = i+1;
        });
        document.getElementById("livesearch").innerHTML=output;
    }
  }
  xmlhttp.open("GET","api/?search="+str,true);
  xmlhttp.send();
  restTux();
}
var clear;
function restTux(){
    clearTimeout(clear);
    clear = setTimeout(function(){ document.getElementById("tuximg").src="img/tux.png"; }, 350);
}
//disable enter
window.addEventListener('keydown',function(e){if(e.keyIdentifier=='U+000A'||e.keyIdentifier=='Enter'||e.keyCode==13){if(e.target.nodeName=='INPUT'&&e.target.type=='text'){e.preventDefault();return false;}}},true);