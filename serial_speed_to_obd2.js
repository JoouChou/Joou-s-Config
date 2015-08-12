var SerialPort = require("serialport").SerialPort
var serialPort = new SerialPort("/dev/ttyUSB0", {
	baudrate: 38400
}); 

var count = time_start = time_end = 0;
serialPort.on("open", function () {
	console.log('open');

	serialPort.write('ATI' + '\r');
	time_start = (new Date()).getTime();

	serialPort.on('data', function(data) {
		count += 1;
		//serialPort.write('ATI' + '\r');
		console.log('data received: ' + data.toString('utf8'));
		time_end = (new Date()).getTime();
		console.log(time_start + ' ' + time_end + ' ' + (time_end - time_start ))
	});

});
