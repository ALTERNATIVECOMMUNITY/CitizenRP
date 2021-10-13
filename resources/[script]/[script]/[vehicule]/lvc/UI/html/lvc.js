/*
---------------------------------------------------
LUXART VEHICLE CONTROL V3 (FOR FIVEM)
---------------------------------------------------
Made by TrevorBarns
---------------------------------------------------
*/

var resourceName = "";
var time_folder = "day/";
var ta_pattern = "ta/pattern_3/";
var audioPlayer = null;
var soundID = 0;
var scale = 0.6;
var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;

const elements =
{
	sirenbox: 	document.getElementById("sirenbox"),
	lswitch: 	document.getElementById("slide"),
	siren: 		document.getElementById("siren"),
	mode1: 		document.getElementById("mode1"),
	mode2: 		document.getElementById("mode2"),
	mode3: 		document.getElementById("mode3"),
   left: 		document.getElementById("left"),
	    right: 		document.getElementById("right"),
			   flash: 		document.getElementById("flash"),
	manu: 		document.getElementById("manu"),
	horn: 		document.getElementById("horn"),
	white: 		document.getElementById("white"),
	wigwag: 		document.getElementById("wigwag"),
			pwr: 		document.getElementById("pwr"),
		stby: 		document.getElementById("stby"),
	lock: 		document.getElementById("grille"),
	rls: 		document.getElementById("rls"),
	ta: 		document.getElementById("ta"),
}

const backup =
{
	left: elements.sirenbox.style.left,
	top: elements.sirenbox.style.top,
}


window.addEventListener('message', function(event) {
	var type = event.data._type;
	if (type == "audio") {
		playSound(event.data.file, event.data.volume);
	}else if ( type == "setResourceName" ) {
		resourceName = event.data.name
	}else if (type == "hud:setItemState") {

		var item = event.data.item;
		var state = event.data.state;

		switch ( item ){
			case "hud":
				if ( state == true ) {
					elements.sirenbox.style.display = "inline";
				}else{
					elements.sirenbox.style.display = "none";
				}
				break;
			case "switch":
				if ( state == true ) {
					elements.lswitch.src= "../textures/cencom/Master_On.png";
					elements.wigwag.src= "../textures/cencom/button/WigWag_On.png";
						elements.stby.src= "../textures/cencom/button/STBY_Off.png";
				}else{
					elements.lswitch.src= "../textures/cencom/Master_Off.png";
						elements.wigwag.src= "../textures/cencom/button/WIG_Off.png";
						elements.stby.src= "../textures/cencom/button/STBY_on.png";
				}
				break;
			case "siren":
				if ( state == true ) {
					elements.siren.src= "../textures/cencom/button/Select_T1.png";
					elements.mode1.src= "../textures/cencom/button/Mode1_ON.png";

				}else{
					elements.siren.src= "../textures/cencom/button/Select_HF.png";
					elements.mode1.src= "../textures/cencom/button/mode1_Off.png";

				}
				break;
				case "pwr":
					if ( state == true ) {
						elements.pwr.src= "../textures/cencom/button/Pwr_On.png";
					}else{
						elements.pwr.src= "../textures/cencom/button/LowPwr_Off.png";
					}
					break;
				case "mode2":
					if ( state == true ) {
						elements.mode2.src= "../textures/cencom/button/Mode2_On.png";
					}else{
						elements.mode2.src= "../textures/cencom/button/mode2_Off.png";
					}
					break;
					case "mode3":
						if ( state == true ) {
							elements.mode3.src= "../textures/cencom/button/Modfe3_On.png";
						}else{
							elements.mode3.src= "../textures/cencom/button/mode3_Off.png";
						}
						break;

			case "horn":
				if ( state == true ) {
					elements.horn.src= "../textures/cencom/button/horn_on.png";
				}else{
					elements.horn.src= "../textures/cencom/button/horn_off.png";
				}
				break;
				case "manu":
					if ( state == true ) {
						elements.manu.src= "../textures/cencom/button/Man_On.png";
					}else{
						elements.manu.src= "../textures/cencom/button/Man_Off.png";
					}
					break;

			case "tkd":
				if ( state == true ) {
					elements.white.src= "../textures/cencom/button/white_on.png";
				}else{
					elements.white.src= "../textures/cencom/button/white_Off.png";
				}
				break;

			case "lock":
				if ( state == true ) {
					elements.lock.src= "../textures/cencom/button/grille_on.png";
				}else{
					elements.lock.src= "../textures/cencom/button/grille_Off.png";
				}
				break;
				// case "rls":
				// 	if ( state == true ) {
				// 		elements.rls.src= "../textures/cencom/button/rls_on.png";
				// 	}else{
				// 		elements.rls.src= "../textures/cencom/button/rls_off.png";
				// 	}
				// 	break;



			case "ta":
				if ( state == 1 ) {
					elements.ta.src = "../textures/cencom/ta/ta_left.gif";
						elements.left.src = "../textures/cencom/button/Left_On.png";
						elements.right.src = "../textures/cencom/button/Right_Arrow_Off.png";
							elements.flash.src = "../textures/cencom/button/Flash_Arrow_Off.png";
				}else if ( state == 2 ){
					elements.ta.src = "../textures/cencom/ta/ta_right.gif";
						elements.right.src = "../textures/cencom/button/Right_On.png";
							elements.flash.src = "../textures/cencom/button/Flash_Arrow_Off.png";
							elements.left.src = "../textures/cencom/button/Left_Arrow_Off.png";
				}else if ( state == 3 ){
					elements.ta.src = "../textures/cencom/ta/center.gif";
						elements.flash.src = "../textures/cencom/button/Flash_On.png";
						elements.left.src = "../textures/cencom/button/Left_Arrow_Off.png";
							elements.right.src = "../textures/cencom/button/Right_Arrow_Off.png";

				}else if ( state == 0 ){
					elements.ta.src = "../textures/cencom/ta/off.png";
						elements.left.src = "../textures/cencom/button/Left_Arrow_Off.png";
							elements.right.src = "../textures/cencom/button/Right_Arrow_Off.png";
							elements.flash.src = "../textures/cencom/button/Flash_Arrow_Off.png";
				}
				break;
			case "ta_pattern":
					ta_pattern = "ta/pattern_" + state + "/"
					break;
			case "time":
					time_folder = state + "/"
					break;
			default:
				break;
		}
	}else if ( type == "hud:setHudScale" ){
		scale = event.data.scale
		elements.sirenbox.style.transform = "scale(" + scale + " )";
	}else if ( type == "hud:getHudScale" ){
		sendData( "hud:sendHudScale", scale = scale );
	}else if ( type == "hud:setHudPosition" ){
		elements.sirenbox.style.left = event.data.pos.left;
		elements.sirenbox.style.top = event.data.pos.top;
	}else if ( type == "hud:resetPosition" ){
		elements.sirenbox.style.left = backup.left;
		elements.sirenbox.style.top = backup.top;
	}
});


// Exit HUD Move Mode
$( document ).keyup( function( event ) {
	//					Esc				Backspace				Space
	if ( event.keyCode == 27 || event.keyCode == 9 || event.keyCode == 32 )
	{
		sendData( "hud:setHudPositon", data = { left: elements.sirenbox.style.left, top: elements.sirenbox.style.top } );
		sendData( "hud:setMoveState", state = false );
	}
} );

$( document ).contextmenu( function() {
		sendData( "hud:setHudPositon", data = { left: elements.sirenbox.style.left, top: elements.sirenbox.style.top } );
		sendData( "hud:setMoveState", state = false );
} );


// This function is used to send data back through to the LUA side
function sendData( name, data ) {
	$.post( "http://"+ resourceName +"/" + name, JSON.stringify( data ), function( datab ) {
		if ( datab != "ok" ) {
			console.log( datab );
		}
	} );
}


//Credit to xotikorukx playSound Fn.
function playSound(file, volume){
  if (audioPlayer != null) {
	audioPlayer.pause();
  }

  soundID++;

  audioPlayer = new Audio("../sounds/" + file + ".ogg");
  audioPlayer.volume = volume;
  var didPlayPromise = audioPlayer.play();

  if (didPlayPromise === undefined) {
	audioPlayer = null; //The audio player crashed. Reset it so it doesn't crash the next sound.
  } else {
	didPlayPromise.then(_ => { //This does not execute until the audio is playing.
	}).catch(error => {
	  audioPlayer = null; //The audio player crashed. Reset it so it doesn't crash the next sound.
	})
  }
}


// Drag to move functions below.
elements.sirenbox.onmousedown = dragMouseDown;

function dragMouseDown(e) {
  e = e || window.event;
  e.preventDefault();
  // get the mouse cursor position at startup:
  pos3 = e.clientX;
  pos4 = e.clientY;
  document.onmouseup = closeDragElement;
  // call a function whenever the cursor moves:
  document.onmousemove = elementDrag;
}

function elementDrag(e) {
  e = e || window.event;
  e.preventDefault();
  // calculate the new cursor position:
  pos1 = pos3 - e.clientX;
  pos2 = pos4 - e.clientY;
  pos3 = e.clientX;
  pos4 = e.clientY;
  // set the element's new position:
  elements.sirenbox.style.top = (elements.sirenbox.offsetTop - pos2) + "px";
  elements.sirenbox.style.left = (elements.sirenbox.offsetLeft - pos1) + "px";
}

function closeDragElement() {
  // stop moving when mouse button is released:
  document.onmouseup = null;
  document.onmousemove = null;
}
