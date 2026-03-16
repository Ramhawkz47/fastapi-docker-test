# Use official Ubuntu 24.04 as base image
FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app

# Install Python and pip
RUN apt-get update \
	&& apt-get install -y python3 python3-pip python3-venv \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

# Copy app files
COPY build/main ./
COPY index.html ./

# Expose port
EXPOSE 8000

# Start FastAPI app with Uvicorn
CMD ["./main"]
