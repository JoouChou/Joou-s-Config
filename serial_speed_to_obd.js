var SerialPort = require("serialport").SerialPort
var serialPort = new SerialPort("/dev/ttyUSB0", {
	baudrate: 38400
}); 

var count = 0;
var delay = 1000;
serialPort.on("open", function () {
	console.log('open');

	serialPort.write('ATI' + '\r');

	serialPort.on('data', function(data) {
		count += 1;
		serialPort.write('ATI' + '\r');
		console.log('data received: ' + data.toString('utf8'));
	});

	setTimeout(function(){
		console.log(count);
		alert('stop!');
	}, 1000);

});
