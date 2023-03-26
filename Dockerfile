# Use the official Maven image as the base image
FROM maven:3.8.4-openjdk-11 AS build

# Copy the project source code to the container
COPY . /app

# Set the working directory to the root of the project
WORKDIR /app
# Build the project using Maven
RUN mvn clean package -DskipTests

# Use the official OpenJDK image as the base image for the runtime image
FROM openjdk:11-jre-slim-buster

# Set the working directory to the root of the application
WORKDIR /app

# Copy the built JAR file from the build image to the runtime image
COPY --from=build /app/target/*.jar ./app.jar

# Expose port 8080 for the container
EXPOSE 8080

# Start the application when the container starts
CMD ["java", "-jar", "./app.jar"]
