# Use an OpenJDK Runtime as the base image
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY . .
# Adjust the line below to match your actual JAR filename
CMD ["java", "-jar", "app.jar"]

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file built by Maven into the container
# Note: Ensure the filename matches what Maven generated in your logs
COPY target/simple-java-app-1.0.jar app.jar

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
