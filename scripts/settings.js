var fs = require('fs');

var configFile;
try {
    configFile = fs.readFileSync(__dirname + '/../config.json');
    configFile = JSON.parse(configFile);
} catch (e) {
    console.log('Error loading config');
    console.log(e);
}

module.exports = configFile ;