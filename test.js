/*******************************************************************************
 *  Code contributed to the webinos project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *	 http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Copyright 2013 TNO
 * Author - Eric Smekens
 ******************************************************************************/

var fs = require('fs');
var OBDReader = require('../lib/obd.js');
var options = {};
options.baudrate = 38400;
var serialOBDReader = new OBDReader("/dev/pts/8", options);

var count_first =  count_flag = count_date = 0;
serialOBDReader.on('dataReceived', function (data) {

	/*
	if ( count_flag == 0 ) {
		count_first += 1;
		if ( count_first == 7 ) {
			count_flag = 1;
		}
	}else {
		if (count_date == 9){
			count_date = 0;
		}else if ( count_date == 0 ) {
			console.log(new Date());
			count_date += 1;
		}else {
			count_date += 1;
		}
	}*/
    console.log(data);

	data = JSON.stringify(data);
	fs.appendFile('data.txt', data + '\n', function (err) {
		if (err) throw err;
	});

});

serialOBDReader.on('connected', function (data) {

	/*
    this.addPoller("vin");			//Vehicle Identification Number
    this.addPoller("vss");			//Speed
    this.addPoller("rpm");			//RPM
    this.addPoller("maf");			//Air Flow Rate from Mass Air Flow Sensor
									//MPG = (14.7*6.17*4.54*VSS*0.621371)/(3600*MAF/100) = 710.7*VSS/MAF
    this.addPoller("load_abs");		//Absolute Load Value
    this.addPoller("throttlepos");	//Throttle Position
    this.addPoller("temp");			//Temperature
	this.addPoller("o2sloc2");		//Location of oxygen sensors
	this.addPoller("vpwr");			//Control module voltage
	this.addPoller("requestdtc");	//Diagnostic trouble code
	*/

    this.addPoller("load_pct");			
    this.addPoller("temp");			//Temperature
    this.addPoller("rpm");			//RPM
    this.addPoller("vss");			//Speed
    this.addPoller("iat");			
    this.addPoller("throttlepos");	//Throttle Position


    this.startPolling(100);
});


serialOBDReader.connect();
console.log("Connecting...");
