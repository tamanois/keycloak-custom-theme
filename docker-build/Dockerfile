# Use a specific Maven version with JDK 17 (standard for Node 18 era)
FROM maven:3.9.6-eclipse-temurin-17

# Install build dependencies
RUN apt-get update && apt-get install -y curl && \
    # Download and install Node.js 20.11.1
    curl -fsSL https://nodejs.org/dist/v20.11.1/node-v20.11.1-linux-x64.tar.gz | tar -xzC /usr/local --strip-components=1 && \
    mvn -version && \
    node -v && \
    npm -v

# Set the working directory inside the container
WORKDIR /app

# The command to run when the container starts
#CMD ["mvn", "clean", "install"]
# For development purposes, we can keep the container running with a simple command
CMD ["tail", "-f", "/dev/null"]