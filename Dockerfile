# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/demo*.jar app.jar

# Expose the application's port
EXPOSE 8080 #3000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
