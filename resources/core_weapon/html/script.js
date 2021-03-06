

function open(data) {
  $(".item").hide();
  const list = ["suppressor", "clip", "flashlight", "scope", "armor"];
  let showed = 0;
  for (let k in data) {
    if (list.includes(k) && data[k] != "") {
      $(`#${k} img`).attr('src', `img/${data[k]}.png`);
      $(`#${k}`).show();
      showed++;
    }
  }
  $("body").fadeIn(500);
  if (showed === 0) $.post('https://core_weapon/close', JSON.stringify({}));
}

$(document).keyup(function (e) {
  if (e.keyCode === 27) {
    $.post('https://core_weapon/close', JSON.stringify({}));
  }
});


const listComponent = {
  scope: ['scope', 'm4a1_scope2', 'm4a1_scope3'],
  suppressor: ['suppressor'],
  clip: ['clip_extended'],
  flashlight: ['flashlight'],
};

window.addEventListener('message', function (event) {
  var edata = event.data;
  if (edata.type == "open") {
    open(edata);
  } else if (edata.type == "close") {
    $("body").fadeOut(500);
  }

  $(".btn").click((event) => {
    const item = $(event.target).data("id");
    $(`#${item}`).fadeOut(500);
    if (item === "armor") {
      $.post('https://core_weapon/getArmor', JSON.stringify({}));
    } else {
      $.post('https://core_weapon/getComponent', JSON.stringify({ component: listComponent[item] }));
    }

    if ($(".item:visible").length === 1) $.post('https://core_weapon/close', JSON.stringify({}));
  });
});

