var shell = require('shelljs');
var express = require('express')
var app = express()

app.get('/', function (req, res) {
if(req.param('key')!=='hello'){
res.send(404,'not found');
}
shell.exec('/var/root/moveit_node_server/change_hosts.sh');
res.send('changing')
})

var server = app.listen(8080, function () {
var host = server.address().address
var port = server.address().port

console.log('Example app listening at http://%s:%s', host, port)
})
