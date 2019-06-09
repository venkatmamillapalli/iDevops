FROM tomcat:8
LABEL author=Venkat
RUN apt-get update && git clone https://github.com/venkatmamillapalli/golwar.git
ADD /golwar/gameoflife.war /webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
