import os
import sys
import yaml

if os.geteuid() != 0:
    print "Script must be run as root. Use sudo."
    sys.exit()

try:
    with open("/etc/ros/app_platform/apache2_configuration.yaml", "r") as f:
        y = yaml.load(f.read())
        y = y or {} 
except IOError:
    pass

try:         
    with open("/etc/apache2/httpd.conf", "a") as g:
        for key,value in y:
            g.write('DocumentRoot "/var/www"')
            g.write('Alias /' + key + ' ' + value)
            g.write("        </Directory> " + value)
            g.write('''                Options Indexes FollowSymLinks MultiViews
                AllowOverride None
                Order allow,deny
                allow from all
        </Directory>  
            \n''')
except:
    print "File /etc/apache2/httpd.conf is unable to be found/edited. You must configure your installation manually."        


