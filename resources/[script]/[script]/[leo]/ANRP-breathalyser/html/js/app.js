$(document).ready(() => {
    $("body").on("keyup", function (key) {
        if (key.which === 113 || key.which == 27) {
            $.post("http://ANRP-breathalyser/Close");
        }
    });
});

BREATH = {}

window.addEventListener("message", function (event) {
    let action = event.data.action;
    let data = event.data.data;

    if (action == 'open') {
        BREATH.Open();
    } else if (action == "close") {
        BREATH.Close();
    } else if (action == "update") {
        BREATH.Update(data);
    } else if (action == "show") {
        BREATH.Show(data);
    }
})

BREATH.Open = function() {
    $(".result").html(`<p></p>`);
    $(".main").show();
    $(".check-button").show();
    $(".progress").hide();
}

BREATH.Close = function() {
    $(".main").hide();
}

BREATH.Update = function(data) {
    data = convert(data);
    $(".progress").hide();
    $(".result").html(`<p>`+data+`</p>`);
}

BREATH.Show = function(data) {
    data = convert(data);
    $(".main").show();
    $(".result").html(`<p>`+data+`</p>`);
    $(".check-button").hide();
}

$(document).on('click', ".check-button", function(e) {
    e.preventDefault();
    $(".result").html(`<p></p>`);
    $.post("https://ANRP-breathalyser/check");
    $(".progress").css("display", "grid");
})

function convert(x) {
    return Number.parseFloat(x).toFixed(2);
  }
