FROM tomcat:8
RUN sudo apt update && wget https://github.com/venkatmamillapalli/iDevops/raw/master/gameoflife.war
RUN cp gameoflife.war webapps
EXPOSE 8080

CMD ["catalina.sh", "run"]