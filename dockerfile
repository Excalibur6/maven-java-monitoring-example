# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your host into the container at the working directory
COPY target/target/actuator-demo-0.0.1-SNAPSHOT /app/  

# Expose the port the application will run on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "target/actuator-demo-0.0.1-SNAPSHOT"]  # Update with your JAR file name
