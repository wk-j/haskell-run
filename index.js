#!/usr/bin/env node

var spawn = require('child_process').spawn;
//var process = require("process");
var argv = process.argv.slice(2)

var file = __dirname + "/dist/build/HaskellRun/HaskellRun";

if(process.platform === "win32") {
    spawn(file, argv , { stdio: "inherit"});
} else {
    spawn(file, argv , { stdio: "inherit"});
    //spawn("mono", [file, ... argv] , {stdio: "inherit"});
}