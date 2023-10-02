# Use an official OpenJDK 17 runtime as a parent image
FROM adoptopenjdk/openjdk17:alpine-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at the specified working directory
COPY target/Dockerex1Application-0.0.1-SNAPSHOT.jar /app/Dockerex1Application-0.0.1-SNAPSHOT.jar

# Expose the port your application will run on
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "dockerex1application.jar"]
