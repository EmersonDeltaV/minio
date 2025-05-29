# Use the official MinIO image from Quay.io
FROM quay.io/minio/minio:RELEASE.2025-03-12T18-04-18Z

# Set the environment variable for the console address
ENV MINIO_CONSOLE_ADDRESS=":9001"

# Expose the necessary ports
EXPOSE 9000 9001

# Command to run the MinIO server
CMD ["server", "/data"]