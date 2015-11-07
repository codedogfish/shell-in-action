var notify = require("node-notify");
var message = "";
process.argv.forEach(function (val, index, array) {
    message += " "+val;
});
nofity(message);
