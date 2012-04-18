<!-- Begin

function main() {
  var program_queue = {};
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
    connection.callService('/dequeue_program', '[4813963303703651000,12]' ,function(resp) {
      alert("Worked!");
    });
    var clear_button = document.getElementById("clear_button");
    clear_button.onclick = function() {
      var tkn = {"token": token};
      //clearQueue();
      //connection.callService('/dequeue_program', '[4813963303703651000,12]' ,function(resp) {
      //alert("Worked!");
      connection.callService('/clear_queue', '[' + parseInt(token) + ']' ,function(resp) {
        alert(resp);
      });
    };
    getQueue();
    
     function runProgram(id) {
       connection.callService('/run_program', [parseInt(token),parseInt(id)],function(resp) {
       });
     }

     function dequeue(id) {
       connection.callService('/dequeue_program', '[4813963303703651000,12]' ,function(resp) {
       });       
     }

     function clearQueue() {
       connection.callService('/clear_queue', '[' + parseInt(token) + ']' ,function(resp) {
       });
     }
  
     function getQueue() {
       connection.callService('/get_queue','[]',function(resp) {
         for (var j = 0; j < program_queue.length; j++) {
           var queueDiv = document.getElementById("queue_div");
           var olddiv = document.getElementById("div_" + program_queue[j].id.toString());
           queueDiv.removeChild(olddiv);
           //var oldbutton = document.getElementById("button_" + program_queue[j].id.toString());
           //queueDiv.removeChild(oldbutton);
           
         }
         program_queue = resp.programs;
         for (var i = 0; i<resp.programs.length;i++) {
           var queueDiv = document.getElementById("queue_div");
           var element = document.createElement("div");
            element.id = "div_" + resp.programs[i].id.toString();
            element.style="position:relative; text-align:right;";
            var text = document.createElement("label");
            text.innerHTML = resp.programs[i].name
            text.id = "text_"+ resp.programs[i].id.toString();
            text.for = resp.programs[i].id.toString();
            var delete_button = document.createElement("button");
            delete_button.innerHTML = "Run";
            delete_button.id = resp.programs[i].id.toString();
            delete_button.onclick = function() {
              var jsonthing = {"token": token, "id": this.id};
              connection.callService('/dequeue_program', '[' + parseInt(token) + ',' + parseInt(this.id) + ']' ,function(resp) {
                //alert("Worked!");
                alert(resp);
              }); 
            };
            var run_button = document.createElement("button");
            run_button.innerHTML = "Run";
            run_button.id = resp.programs[i].id.toString();
            run_button.onclick = function() {
              runProgram(this.id);
            };
            element.appendChild(text);
            element.appendChild(delete_button);
            element.appendChild(run_button);
            queueDiv.appendChild(element);
         }
       });
     }
      
   
  });
}
// End -->
