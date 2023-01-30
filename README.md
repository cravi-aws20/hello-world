For Sonarqube Integration below steps are mandatory.
Need to Install Sonarqube server on ubuntu. https://www.sonarqube.org/success-download-community-edition/ check this site for latest version.
wget <url of sonarqube>
unzip <x.zip> into /opt folder
create new user, preferably "sonaradmin".
chown -R sonaradmin:sonaradmin /opt/sonar..
su sonaradmin   ---- sonarqube will not run with root user, hence need to switch user.
cd /opt/sonar../bin/linux..
./sonar.sh start
to check use ./sonar.sh status
check it in the browser -- use http://publicip:9000
login with username: admin password:admin
change the password.
use manual configuration option -> give name and "key" name. This key name should be used in the pipleine script.
again go to manual then create token and save that token.
open jenkins --> create global crentials with "Secret text" option and given the token details and save it with toke credentials.
go to configure systems --> enable global environment under sonarqube tab --->advanced --->give name and ip address(user http://publicip:9000) given token credentials we generated.
go to global configuration ---> got to sonarscanner tab and select installation and save it.
under plugin install sonarscanner plugin.... (this is actually 15th step, please read this as there)

  
