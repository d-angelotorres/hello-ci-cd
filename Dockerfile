# Use the official OpenJDK 17 image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from target/ to the container
COPY target/hello-ci-cd-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 (the same port our Spring Boot app runs on)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
