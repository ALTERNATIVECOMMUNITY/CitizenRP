window.addEventListener('message', function (event) {
    if (event.data.action === "updateHour") {
        $("#time").text(event.data.value);
    } else {
        if (event.data.pauseMenu == false) {
            $("#statusHud").fadeIn();
            $("#hour").fadeIn();
            switch (event.data.action) {
                case 'updateStatusHud':
                    $("body").css("display", event.data.show ? "block" : "none");
                    $("#food .progress-bar").css("width", event.data.hunger + "%");
                    $("#water .progress-bar").css("width", event.data.thirst + "%");
                    if (event.data.hunger < 10) {
                        $("#food .progress-bar").addClass('warning');
                    } else {
                        $("#food .progress-bar").removeClass('warning');
                    }
                // setTalking(event.data.voice);
            }
        } else {
            $("#statusHud").fadeOut();
            $("#hour").fadeOut();
        }
    }
});