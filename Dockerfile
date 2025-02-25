# Use OpenJDK as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Java file
COPY Main.java /app

# Compile Java program
RUN javac Main.java

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["java", "Main"]
