var express = require('express');
var app = express();
const fs = require('fs');
app.use(express.static('public'));

app.get('/api/', function(req, res){
  const commands = req.app.get('commands');
  const results = SortResults(commands, req.query.search);
  res.send(results);
});

function SortResults(commands, search){
    console.log("SEARCH: "+search);
    var results = [];
    var threshold = 1;
    var terms = search.split(" ");
    for (var i = 0; i < commands.length; i++){
        var obj = commands[i];
        var points = 0;
        for (var key in obj){
            for (var w = 0; w < terms.length; w++){
                var value = obj[key].toString();
                if(value.includes(terms[w])){
                    points = points + 1;
                }
            }
        }
        if(points >= threshold){
            results.push({"INFO":commands[i].INFO,"COMMAND":commands[i].COMMAND,"TAGS":commands[i].TAGS,"POINTS":points});
        }
    }
    results.sort(function (a, b) {
        return b.POINTS - a.POINTS;
    });
    return results;
}

function Start(){
    fs.readFile('db/database.json', 'utf8', function (err,data) {
        if (err) {
          return console.log(err);
        }
        app.set('commands', JSON.parse(data));
        app.listen(8080);
    });
}
Start();