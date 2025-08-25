FROM tomcat:11.0.10-jdk24

# Xoá ứng dụng mặc định của Tomcat (tuỳ chọn)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR vào Tomcat
COPY MurachEmailList.war /usr/local/tomcat/webapps/ROOT.war

# Mở port 8080
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]

