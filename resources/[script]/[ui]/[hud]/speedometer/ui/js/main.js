const DisplayRoot = document.getElementById("displayRoot");
const GearDisplay = document.getElementById("gearDisplay");
const GearNum = document.getElementById("gearNum");
const UnitDisplay = document.getElementById("unitDisplay");
const AbsIndicator = document.getElementById("absIndicator");
const HBrakeIndicator = document.getElementById("hBrakeIndicator");
const RpmDisplay = document.getElementById("rpmBar");
const gasoilDisplay = document.getElementById("gasoilBar");
const SpeedDisplay = [
	document.getElementById("speedDisplayDigit_0"),
	document.getElementById("speedDisplayDigit_1"),
	document.getElementById("speedDisplayDigit_2"),
];
var useMetric = true;

window.addEventListener("message", function (event) {
	if (event.data.showhud == true) {
		DisplayRoot.classList.remove('hidden')
		setSpeed(event.data.speed, event.data.acceleration, event.data.maxSpeed);
		setFuel(event.data.fuel);

		if (event.data.gear != undefined) {
			const gear = parseInt(event.data.gear);
			if (gear == 0) {
				GearNum.innerText = "R";
				GearDisplay.classList.add("reverseGear");
				GearDisplay.classList.remove("normalGear");
			} else {
				GearNum.innerText = gear;
				GearDisplay.classList.remove("reverseGear");
				GearDisplay.classList.add("normalGear");
			}
		}
		if (event.data.hBrake != undefined) HBrakeIndicator.classList.toggle("inactive", event.data.hBrake == false);
		if (event.data.abs != undefined) AbsIndicator.classList.toggle("inactive", event.data.abs == false);
		if (event.data.rpm != undefined) {
			const rawRpm = parseFloat(event.data.rpm);
			RpmDisplay.style.width = `${(parseFloat(event.data.rpm) * 100.0).toFixed(2)}%`;
			GearDisplay.classList.toggle("rpmOverload", (rawRpm * 9) > 7.5);
		}
	}
	if (event.data.showhud == false) {
		DisplayRoot.classList.add('hidden')
	}
});

function setSpeed(speed, acceleration, maxSpeed) {
	var speedString = speed.toString().padStart(3, '&');
	if (speedString.length > 3) speedString = "999";
	for (let i = 0; i < 3; i++) {
		SpeedDisplay[i].innerText = speedString[i] == "&" ? "" : speedString[i];
	}
}

function setFuel(fuel) {
	gasoilDisplay.style.height = `${fuel}%`;
}