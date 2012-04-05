<!-- Begin

function login(form) {
  page = "web_abomination" + ".html";
  if (form.username.value != null && form.password.value != null) {
     connection.callService('/login','[\"' + form.username.value + "\", \"" + form.password.value + '\"]',function(resp) {
      if (resp != null && resp.token != 0) {
        //go to the web abomination but also tell it stuff
        //Could put the token in the url, but not admin thing, super secret HTTP fun?
        var token = resp.token;
        var is_admin = resp.is_admin;
        self.location.href = "web_abomination.html";
      } else {
        alert("Bad try at logging in.");
      }
    });
  } else {
    alert("Don't leave stuff blank.");
    //form.username.focus();
  }
}

function newUser(form) {
  if (form.username.value != null && form.password.value != null) {
    connection.callService('/create_user','[\"' + form.username.value + "\", \"" + form.password.value + '\"]',function(resp) {
      if (resp != null && resp.token != 0) {
        login(form);
      } else {
        alert("Bad try at logging in.");
      }
    });
  } else {
    alert("Don't leave stuff blank.");
    //form.username.focus();
  }  
}


function main() {
  var connection = new ros.Connection("ws://10.0.11.145:9091");
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
  });
}

// End -->
