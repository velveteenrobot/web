import os
import sys
import yaml

if os.geteuid() != 0:
    print "Script must be run as root. Use sudo."
    sys.exit()

try:
    with open("/etc/ros/app_platform/apache2_config.yaml", "r") as f:
        y = yaml.load(f.read())
        y = y or {} 
except:
    print "No file /etc/ros/app_platform/apache2_config.yaml"

try:         
    with open("/etc/apache2/httpd.conf", "a") as g:
        for key,value in y["aliases"].iteritems():
            g.write('DocumentRoot "/var/www"\n')
            g.write('Alias /' + key + ' ' + value + '\n')
            g.write("        </Directory> " + value + '\n') 
            g.write('''                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                allow from all
        </Directory>  
            \n''')
except Exception, e:
    print e
    print "File /etc/apache2/httpd.conf is unable to be found/edited. You must configure your installation manually."        


