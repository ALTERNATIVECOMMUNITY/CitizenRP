$(document).ready(function(){
  // LUA listener
  window.addEventListener('message', function( event ) {
    if (event.data.action == 'open') {
      var type        = event.data.type;
      var userData    = event.data.array['user'][0];
      var licenseData = event.data.array['licenses'];
      var sex         = userData.sex;
      var fecha       = userData.dateofbirth;
      var trabajo     = userData.job;
      var mes         = fecha.substr(3,2);
      var dia         = fecha.substr(0,2);
      var año         = fecha.substr(6,9);
      var mes2;
      var trabajo2;


      if ( mes == '01') {
        mes2 = 'JAN'; //bike
      } else if ( mes == '02' ) {
        mes2 = 'FEV';
      } else if ( mes == '03' ) {
        mes2 = 'MAR'; //car
      } else if ( mes == '04' ) {
        mes2 = 'AVR'; //car
      } else if ( mes == '05' ) {
        mes2 = 'MAI'; //car
      } else if ( mes == '06' ) {
        mes2 = 'JUN'; //car
      } else if ( mes == '07' ) {
        mes2 = 'JUL'; //car
      } else if ( mes == '08' ) {
        mes2 = 'AOUT'; //car
      } else if ( mes == '09' ) {
        mes2 = 'SEPT'; //car
      } else if ( mes == '10' ) {
        mes2 = 'OCT'; //car
      } else if ( mes == '11' ) {
        mes2 = 'NOV'; //car
      } else if ( mes == '12' ) {
        mes2 = 'DEC'; //car
      }

      if ( trabajo == 'unemployed') {
        trabajo2 = 'N/A'; //bike
      } else if ( trabajo == 'mechanic' ) {
        trabajo2 = 'MECANO';
      } else if ( trabajo == 'police' ) {
        trabajo2 = 'L.S.P.D';
      }else if ( trabajo == 'ambulance' ) {
        trabajo2 = 'L.S.F.D';
      }else if ( trabajo == 'fisherman' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'fueler' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'garbage' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'lumberjack' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'miner' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'slaughterer' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'tailor' ) {
        trabajo2 = 'INFORMAL';
      }else if ( trabajo == 'reporter' ) {
        trabajo2 = 'SALARIÉ';
      }else if ( trabajo == 'taxi' ) {
        trabajo2 = 'SALARIÉ';
      }
      //ADD JOBS HERE 


      if ( type == 'driver' || type == null) {
        $('img').show();
        //$('#name').css('color', '#282828');

        if ( sex.toLowerCase() == 'm' ) {
          $('img').attr('src', 'assets/images/male.png');
          //$('img').attr('src', link);
          $('#sex').text('M'); // male
        } else {
          $('img').attr('src', 'assets/images/female.png');
          //$('img').attr('src', link);
          $('#sex').text('F'); //female
        }

        $('#name').text(userData.firstname + '\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0' + userData.lastname);
        //$('#dob').text(userData.dateofbirth);
        $('#dob').text(dia + '\xa0' + mes2 + '\xa0' + año);
        //$('#height').text(userData.height);
        $('#ocupation').text(trabajo2);
        $('#signature').text(userData.firstname + userData.lastname); //$('#signature').text(userData.firstname + ' ' + userData.lastname);

        if ( type == 'driver' ) {
          if ( licenseData != null ) {
            Object.keys(licenseData).forEach(function(key) {
              var type = licenseData[key].type;

              if ( type == 'drive_bike') {
                type = 'Moto'; //bike
              } else if ( type == 'drive_truck' ) {
                type = 'Camions y Buses'; //truck
              } else if ( type == 'drive' ) {
                type = 'Voiture'; //car
              }

              if ( type == 'Moto' || type == 'Camions' || type == 'Voiture' ) { // if ( type == 'bike' || type == 'truck' || type == 'car' ) {
                $('#licenses').append('<p style="color:White;"> '+ type +'</p>');
                //$('p').css('font-size', '14px'); //BORRAR SI ARRUINA EL NAME
              }
            });
          }
          $('#ocupation').hide();
          $('#id-card').css('background', 'url(assets/images/license.png)');
        } else {
          $('#ocupation').show();
          $('#id-card').css('background', 'url(assets/images/idcard.png)');
        }
      } else if ( type == 'weapon' ) {
        //$('img').hide();
        //$('#name').css('color', '#d9d9d9');
        //
        $('#ocupation').hide();
        if ( sex.toLowerCase() == 'm' ) {
          $('img').attr('src', 'assets/images/male.png');
          $('#sex').text('M'); // male
        } else {
          $('img').attr('src', 'assets/images/female.png');
          $('#sex').text('F'); //female
        }
        //
        $('#name').text(userData.firstname + '\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0\xa0' + userData.lastname);
        //$('#dob').text(userData.dateofbirth);
        $('#dob').text(dia + '\xa0' + mes2 + '\xa0' + año);
        $('#signature').text(userData.firstname + userData.lastname); //$('#signature').text(userData.firstname + ' ' + userData.lastname);

        $('#id-card').css('background', 'url(assets/images/firearm.png)');
      }

      $('#id-card').show();
    } else if (event.data.action == 'close') {
      $('#name').text('');
      $('#dob').text('');
      $('#height').text('');
      $('#signature').text('');
      $('#sex').text('');
      $('#id-card').hide();
      $('#licenses').html('');
    }
  });
});
