<!-- Begin

function main() {

  Object.size = function(obj) {
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
  };

  var current_program = { info: {}, code: ""};
  //var current_program["info"] = {};
  var PYTHON = 1;
  var url_array = window.location.href.split('/');
  var connection = new ros.Connection("ws://" + url_array[2] + ":9091");
  var connectInfo = document.location.toString();
  var url = 'http://' + url_array[2] + "/web_abominations/login.html";

  var tokenMatches = connectInfo.match(/tkn=([^&]*)/);
  if (tokenMatches === null) {
    self.location.href = url;
    return;
  }
  var token = tokenMatches[1];
  var usernameMatches = connectInfo.match(/uname=([^&]*)/);
  if (usernameMatches === null) {
    self.location.href = url;
    return;
  }
  var username = usernameMatches[1];
  var adminMatches = connectInfo.match(/.*&ad=([^&]*)/);
  if (adminMatches === null) {
    self.location.href = url;
    return;
  }
  var is_admin = adminMatches[1];
  document.getElementById("queue").href = 'http://' + url_array[2] + "/web_abominations/queue.html?tkn=" + token + "&uname=" + username + "&ad=" + is_admin;
  document.getElementById("home").href = 'http://' + url_array[2] + "/web_abominations/web_abomination.html?tkn=" + token + "&uname=" + username + "&ad=" + is_admin;
  document.getElementById("write_program").href = 'http://' + url_array[2] + "/web_abominations/write_program.html?tkn=" + token + "&uname=" + username + "&ad=" + is_admin;
  
        /*var connection = null;
        try {
            connection = new ros.Connection('ws://' + address + ':' + port);
        } catch (err) {
            log('Problem creating proxy connection object!');
            return;
        }*/

  var url_array = window.location.href.split('/');
  var connection = new ros.Connection("ws://" + url_array[2] + ":9091");
  connection.setOnClose(function (e) {
    alert('connection closed<br/>');
    //start up rosbridge, reload?
  });
  connection.setOnError(function (e) {
    alert('error!<br/>');
  });
  connection.setOnOpen(function (e) {
    alert('connected to ROS<br/>');
    //only make the objects visible if rosbridge connected?
    var save_button = document.getElementById("save_button");
    save_button.onclick = function() {
      var program_name = document.getElementById("program_name").value;
      var code = document.getElementById("code").value;
      if (Object.size(current_program) == 0 || program_name !== current_program["info"]["name"]) {
        connection.callService('/create_program', '[' + parseInt(token) + ']' ,function(resp) {
          alert("New Program");
          current_program["info"]["id"] = parseInt(resp);
        }); 
        current_program['info']['name'] = program_name;
        current_program['info']['token'] = token;
        current_program['info']['type'] = PYTHON;
        current_program['info']['owner'] = username;
        current_program['code'] = code;
        connection.callService('/update_program', '[' + parseInt(token) + ',' + current_program + ']' ,function(resp) {
          alert("Program Updated!");
        });
      } else {
        current_program['info']['token'] = token;
        current_program['info']['type'] = PYTHON;
        current_program['info']['owner'] = username;
        current_program['code'] = code;
        connection.callService('/update_program', '[' + parseInt(token) + ',' + current_program + ']' ,function(resp) {
          alert("Program Updated!");
        });
      }
    connection.callService('/update_program', '[' + parseInt(token) + ']' ,function(resp) {
        alert(resp);
      });
    };
    var queue_button = document.getElementById("add_to_queue");
    queue_button.onclick = function() {
      //clearQueue();
      //connection.callService('/dequeue_program', '[4813963303703651000,12]' ,function(resp) {
      //alert("Worked!");
      connection.callService('/queue_program', '[' + parseInt(token) + ',' + current_program.info.id + ']' ,function(resp) {
        alert(resp);
      });
    };
  });
}
// End -->
