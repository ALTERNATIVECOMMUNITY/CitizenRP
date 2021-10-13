var statuss = false

$(function() {
  window.addEventListener('message', function(event) {
  if (event.data.type == "open") {
    document.getElementById('one').style.display = "none"
    document.getElementById('two').style.display = "none"
    if (event.data.ammo >= 2) {
      console.log("11")
      document.getElementById('one').style.display = "block"
      document.getElementById('two').style.display = "block"
    }
    else if(event.data.ammo == 1) {
      console.log("22")
      document.getElementById('two').style.display = "none"
      document.getElementById('one').style.display = "block"
    }
    document.getElementById('all').style.display = "block"
  
  }

  if (event.data.type == "close") {
    document.getElementById('all').style.display = "none"
  }

  else if (event.data.type == "sound") {

    document.getElementById('sound').play()
  }   

  })
})