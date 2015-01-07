var fs=require("fs");

var exec = require('child_process').exec;

var last = exec('jison SqlParser.jison', function (error, stdout, stderr) {
    if (error !== null) {
      console.log('exec error: ' + error);
    }
    
    var script = fs.readFileSync('./SqlParser.js', {encoding: 'utf8'});
    var result = 'define(function(require, exports, module) {\n';
    result += script;
    
    result += '\n\n';
    result += 'parser.yy.parseError = function(str, hash) {\n';
	result += 'var errors = new Array();\n';
	result += "var errText = 'Expecting ' + hash.expected.join(', ') + ', got \\'' + hash.token + '\\'';\n";
	result += "errors.push({row: hash.line, column: hash.loc.first_column, text: errText, type: 'error', raw: errText });\n";
	result += 'console.log(str);\n';
	result += 'throw errors;}\n';

    result += '\n\n});'
    fs.writeFile('SqlParser.js',result,function(err){ 
        if (err !== null) {
            console.log('exec error: ' + err);
        }
    });
    
    
    console.log('Successful!');
    
});