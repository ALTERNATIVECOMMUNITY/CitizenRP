var select_status = false
var driver_status = false
var job_status = false
var id_status = false
var dollar_status = false
var show = undefined
var current_job = undefined
$(function() {
  window.addEventListener('message', function(event) {
    if (event.data.type == "show_close") {
      document.getElementById('showcard').style.display = "none"

    }
    if (event.data.type == "show") {
      document.getElementById('showcard').style.display = "block"
      document.getElementById('show_name').innerHTML = event.data.fullname
      document.getElementById('show_date').innerHTML = event.data.dateofbirth
      document.getElementById('show_sex').innerHTML = event.data.sex
      document.getElementById('show_sign').innerHTML = event.data.fullname
      document.getElementById('show_height').innerHTML = event.data.height
      if(event.data.typ == "id") {
        document.getElementById('showimg').src = "images/idcard.png"
      }
      else if(event.data.typ == "driver-license") {
        document.getElementById('showimg').src = "images/driver_license.png"
      }
      else if(event.data.typ == "police") {
        document.getElementById('showimg').src = "images/police.png"
      }
      else if(event.data.typ == "sheriff") {
        document.getElementById('showimg').src = "images/sheriff.png"
      }
      else if(event.data.typ == "doctor") {
        document.getElementById('showimg').src = "images/emergency.png"
      }
      else if(event.data.typ == "lawyer") {
        document.getElementById('showimg').src = "images/justice.png"
      }
    }

  if (event.data.type == "open") {
    document.getElementById('dollar').style.display = "block"

    document.getElementById('showcard').style.display = "none"
    document.getElementById('badge').style.display = "none"
    document.getElementById('moneyt').innerHTML = event.data.money
    if(event.data.money == 0) {
      document.getElementById('dollar').style.display = "none"
    }
    document.getElementById('walletimg').src = "images/"+event.data.color+".png"
    
    document.getElementById('id_name').innerHTML = event.data.fullname
    document.getElementById('id_date').innerHTML = event.data.dateofbirth
    document.getElementById('id_sex').innerHTML = event.data.sex
    document.getElementById('id_sign').innerHTML = event.data.fullname
    document.getElementById('id_height').innerHTML = event.data.height

    document.getElementById('driver_name').innerHTML = event.data.fullname
    document.getElementById('driver_date').innerHTML = event.data.dateofbirth
    document.getElementById('driver_sex').innerHTML = event.data.sex
    document.getElementById('driver_sign').innerHTML = event.data.fullname
    document.getElementById('driver_height').innerHTML = event.data.height

    document.getElementById('job_name').innerHTML = event.data.fullname
    document.getElementById('job_date').innerHTML = event.data.dateofbirth
    document.getElementById('job_sex').innerHTML = event.data.sex
    document.getElementById('job_sign').innerHTML = event.data.fullname
    document.getElementById('job_height').innerHTML = event.data.height

    document.getElementById('all').style.display = "block"
    document.getElementById('job-license').style.display = "none"
    document.getElementById('driver-license').style.display = "none"

    if(event.data.license == true) {
      document.getElementById('driver-license').style.display = "block"
    }    if(event.data.job == "police") {
      current_job = "police"
      document.getElementById('badge').style.display = "block"
      document.getElementById('badgeimg').src = "images/badge_pd.png"
      document.getElementById('job-license').style.display = "block"
      document.getElementById('jobimg').src = "images/police.png"
    }
    else if(event.data.job == "sheriff"){
      current_job = "sheriff"
      document.getElementById('badge').style.display = "block"
      document.getElementById('badgeimg').src = "images/badge_sheriff.png"
      document.getElementById('job-license').style.display = "block"
      document.getElementById('jobimg').src = "images/sheriff.png"
    }
    else if(event.data.job == "lawyer"){
      current_job = "lawyer"
      document.getElementById('badge').style.display = "block"
      document.getElementById('badgeimg').src = "images/badge_justice.png"
      document.getElementById('job-license').style.display = "block"
      document.getElementById('jobimg').src = "images/justice.png"
    }
    else if(event.data.job == "ambulance"){
      current_job = "doctor"
      document.getElementById('badge').style.display = "block"
      document.getElementById('badgeimg').src = "images/badge_ems.png"
      document.getElementById('job-license').style.display = "block"
      document.getElementById('jobimg').src = "images/emergency.png"
    }
  document.getElementById('all').style.display = "block"
  }
  })
})

window.addEventListener("keyup", (event) => {
  event.preventDefault();
  if (event.key == "Escape") {
    document.getElementById('all').style.display = "none"
      $.post("https://stg_wallet/close", "{}");
  }
})


function slider (v){
  if(select_status == false) {
  if(v == "id") {
    document.getElementById('id').style.top = "20%"
    document.getElementById('idflow').style.height = "28%"
  }
  if(v == "id_off") {

    document.getElementById('id').style.top = "22.4%"
    document.getElementById('idflow').style.height = "20%"

  }
  if(v == "driver-license") {
    document.getElementById('driver-license').style.top = "23%"
    document.getElementById('driverflow').style.height = "31%"
  }
  if(v == "driver-license_off") {
    document.getElementById('driver-license').style.top = "26.5%"
    document.getElementById('driverflow').style.height = "20%"

  }
  if(v == "job-license") {
    document.getElementById('job-license').style.top = "28%"
    document.getElementById('jobflow').style.height = "28%"
  }
  if(v == "job-license_off") {
    document.getElementById('job-license').style.top = "30.3%"
    document.getElementById('jobflow').style.height = "20%"
    }
    if(v == "dollar") {
      document.getElementById('dollar').style.top = "17.2%"
      document.getElementById('dollarflow').style.height = "30%"
    }
    if(v == "dollar_off") {
      document.getElementById('dollar').style.top = "20%"
      document.getElementById('dollarflow').style.height = "20%"
      }
  }
}

function select(v) {
if (v == "driver-license") {
  if(driver_status == false) {
  select_status = true
  driver_status = true
  document.getElementById('show').style.display = "block"
    show = "driver-license"
  document.getElementById('driver_info').style.display = "block"
document.getElementById('driver-license').style.top = "10%"
document.getElementById('driverflow').style.transition = "0.5s"
document.getElementById('driverflow').style.height = "100%"}
else {
  driver_status = false
  select_status = false
setTimeout(() => document.getElementById('driver_info').style.display = "none", 150);
document.getElementById('driver-license').style.top = "26.5%"
document.getElementById('driverflow').style.transition = "0.4s"
document.getElementById('driverflow').style.height = "20%"
document.getElementById('show').style.display = "none"
}
}
if (v == "job-license") {
  if(job_status == false) {
  select_status = true
  job_status = true
  document.getElementById('job_info').style.display = "block"
  document.getElementById('show').style.display = "block"
 
  show = "job"

document.getElementById('job-license').style.top = "15%"
document.getElementById('jobflow').style.transition = "0.5s"
document.getElementById('jobflow').style.height = "100%"}
else {
  job_status = false
  select_status = false
  setTimeout(() => document.getElementById('job_info').style.display = "none", 150);
  document.getElementById('show').style.display = "none"

document.getElementById('job-license').style.top = "30.3%"
document.getElementById('jobflow').style.transition = "0.4s"
document.getElementById('jobflow').style.height = "20%"
}
}
if (v == "id") {
  if(id_status == false) {
  select_status = true
  id_status = true
  document.getElementById('id_info').style.display = "block"
  document.getElementById('show').style.display = "block"
show = "id"
document.getElementById('id').style.top = "6%"
document.getElementById('idflow').style.transition = "0.5s"
document.getElementById('idflow').style.height = "100%"}
else {
  id_status = false
  select_status = false
  setTimeout(() => document.getElementById('id_info').style.display = "none", 150);
  document.getElementById('show').style.display = "none"

document.getElementById('id').style.top = "22.4%"
document.getElementById('idflow').style.transition = "0.4s"
document.getElementById('idflow').style.height = "20%"
}
}
if(v == "dollar") {
  if(dollar_status == false){
    dollar_status = true
    select_status = true
  document.getElementById('money').style.display = "block"
    document.getElementById('dollar').style.top = "0%"
    document.getElementById('dollarflow').style.height = "73%"
    document.getElementById('dollarflow').style.transition = "0.3s"

  }
  else{
    dollar_status = false
    select_status = false
    document.getElementById('money').style.display = "none"

    document.getElementById('dollarflow').style.transition = "0.4s"
    document.getElementById('dollar').style.top = "20%"
    document.getElementById('dollarflow').style.height = "20%"
  }
}
}


function showw ()
{
  if(show == "job") {
    $.post('http://stg_wallet/share', JSON.stringify({
      show: current_job,
      }));
  }
  else {
  $.post('http://stg_wallet/share', JSON.stringify({
    show: show,
    }));
}
}