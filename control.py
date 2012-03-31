#!/usr/bin/env python


# enable debugging
import cgi, cgitb
import os
import pexpect
import time
cgitb.enable()

import popen2


print "Content-type: text/html"
print

print "RESULT"

form = cgi.FieldStorage()
message = form.getvalue("action", "NO_ACTION")

def run(fun):
    out = ""
    v = popen2.popen4(fun)
    for i in v[0]:
        out = out + i
    return out

def run_as_robot(command):
    run = "su applications -c \"" + command + "\""
    #print "C", run
    child = pexpect.spawn(run)
    result = child.expect(["ssword:", "(yes/no)?"])
    child.sendline("willow")
    out = ""
    for i in child.readlines():
        out = out + i
    return out

def start_rosbridge():
    process_name = "rosbridge.py"
    tmp = os.popen("ps -Af").read()
    out = ""
    if process_name not in tmp[:]:
        #newprocess="nohup python %s &" % (process_name)
        #os.system(newprocess)
        out = run_as_robot("source ~/.bashrc ; source /opt/ros/electric/setup.bash ; source ~/ros/setup.bash ; nohup rosrun rosbridge rosbridge.py --port 9091 &")
    return out

output2 = ""
output2 = run_as_robot("source ~/.bashrc ; source /opt/ros/electric/setup.bash ; source ~/ros/setup.bash ; nohup roscore &")
print output2
output = ""
output = start_rosbridge()
print output

if (message == "GET_STATE"):
    print "USERS"
    active_user = "(UNKNOWN)"
    dead_users = ""
    message = ""
    for i in run("robot users --no-plist").split("\n"):
        if (i.find("Active User:") != -1):
            active_user = i.split(":")[1].strip()
        if (i.find("Message:") != -1):
            message = i.split(":")[1].strip()
        if (i.find("*") != -1):
            dead_users = dead_users + i[i.find("*") + 1:i.find("(")].strip() + ","

    #print "ACTIVE_USER: ", active_user
    #print "INACTIVE_USERS:", dead_users.strip().strip(",")
    #print "MESSAGE:", message
    
    if (active_user == "applications"):
        print "STATE_VALID"
    elif (active_user == "" or active_user == "None"):
        print "STATE_OFF"
    else:
        print "STATE_IN_USE"
        print "USER:", active_user
        if (message != ""):
            print "MESSAGE:", message #TODO: no newlines!

    #print "PROCESSES:"
    #processes = ""
    #for i in run_as_robot("robot plist").split("\n"):
    #    if (i.strip() != "Password:" and i.strip() != "The following processes are running:" and i.strip() != "" and i.strip() != "No processes running."):
    #        l = i.strip().split(None)
    #        if (len(l) > 5):
    #            print l[5], "from", l[4]
    #        else:
    #            print "INVALID:", i.strip()

    print
elif (message == "STOP_ROBOT"):
    print "STOPPING_ROBOT"
    result = run_as_robot("yes | robot claim -m 'stopping the robot' ; yes | robot stop ; yes | robot release")
    output2 = ""
    output2 = run_as_robot("source ~/.bashrc ; source /opt/ros/electric/setup.bash ; source ~/ros/setup.bash ; nohup roscore &")
    out1 = ""
    out1 = start_rosbridge()
    print result
    print "DONE"
elif (message == "START_ROBOT"):
    print "STARTING_APP_MAN"
    print run_as_robot("yes | robot claim -m 'running applications platform' ; source ~/.bashrc ; source /opt/ros/electric/setup.bash ; source ~/ros/setup.bash ; yes | robot start > ~/robot_start.txt &")
    time.sleep(30.0) #FIXME: this is a race condition. Should wait for the master.
    print run_as_robot("source /opt/ros/electric/setup.bash ; source ~/ros/setup.bash ; source ~/.bashrc ; nohup roslaunch pr2_app_manager pr2_app_manager.launch > ~/run.txt &")
    out2 = ""
    out2 = start_rosbridge()
    print "DONE"
else:
    print "REJECT_COMMAND"
    print "action = STOP_ROBOT,START_ROBOT,GET_STATE"
    
