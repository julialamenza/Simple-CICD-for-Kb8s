# Use an official Go runtime as the base image
FROM golang:1.16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY greeter.go .

# Build the Go application
RUN go build -o greeter .

# Expose the port on which the application will run
EXPOSE 8080

# Set an environment variable
ENV HELLO_TAG=default

# Run the Go application when the container starts
CMD ["./greeter"]