FROM devopsedu/webapp

MAINTAINER SwathiRudramurthy

#Update Repository
RUN apt-get update -y

#Install Apache
RUN apt-get install -y apache2

#Copy Application Files
RUN rm -rf /var/www/html/*
COPY website /var/www/html/

#Open port 80
EXPOSE 9090

#Start Apache service
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

# Start Selenium Test
# COPY selenium-server-standalone-3.14.0.jar /tmp
# RUN nohup java -jar /tmp/selenium-server-standalone-3.14.0.jar &

# CMD ["/bin/bash"]
