# Use the same base image as the GitHub workflow
FROM hl7fhir/ig-publisher-base:latest

# Set working directory
WORKDIR /app

# Add /app to git's safe.directory to prevent 'dubious ownership' warnings
RUN git config --global --add safe.directory /app

# Copy the entire project
COPY . .

# Download the latest publisher
RUN curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs

# Run the publisher
CMD ["java", "-jar", "./input-cache/publisher.jar", "publisher", "-ig", ".", "-no-tx", "-no-update"]