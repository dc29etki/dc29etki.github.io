var express = require('express');
var app = express();

app.use(express.static(__dirname + '/www'));

console.log('--------------------------------------------------------')
console.log('>>>>>>>>>> Starting app...\n');
console.log('>>>>>>>>>> Name: Dashboard');
console.log('>>>>>>>>>> Author: David Etkin');
console.log('>>>>>>>>>> Organization: LeaseTrack');
console.log('>>>>>>>>>> Date: Dec 2020\n');
app.listen('8081');
console.log('>>>>>>>>>> Running at localhost:8081...');