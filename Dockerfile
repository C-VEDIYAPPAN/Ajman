# Use OpenJDK 17 image as a base image
FROM openjdk:17

# Expose port 8080
EXPOSE 8080

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/ajmanbank-0.0.1-SNAPSHOT.jar app.jar

COPY configfiles /app/configfiles
# Specify the command to run your application
ENTRYPOINT ["java","-jar","app.jar"]
