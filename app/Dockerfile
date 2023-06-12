# Use a Go base image
FROM golang:1.17-alpine AS build

WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the application source code
COPY . .

# Build the Go application
RUN go build -o main .

# Use a minimal base image for the final container
FROM alpine:latest
RUN apk --no-cache add ca-certificates

WORKDIR /app

# Copy the built Go application from the previous stage
COPY --from=build /app/main .

# Expose the application's port
EXPOSE 8080

# Run the Go application
CMD ["./main"]