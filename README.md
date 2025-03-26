# Introduction
This repo holds the Dockerfile image used for the MinIO application currently available in the Edge Orchestration Marketplace. MinIO is a high-performance, distributed object storage system that is compatible with Amazon S3. It is designed to handle large-scale data workloads such as machine learning, analytics, and cloud-native applications.

## Features
- **High Performance**: MinIO is optimized for high throughput and low latency, making it ideal for demanding applications.
- **Scalability**: Easily scale MinIO across multiple nodes and data centers to handle growing data needs.
- **Erasure Coding**: Protects data with per-object inline erasure coding for high reliability.
- **Bitrot Protection**: Ensures data integrity by detecting and correcting bitrot.
- **Encryption**: Provides end-to-end encryption to secure data at rest and in transit.
- **Identity Management**: Supports integration with various identity providers for access control.
- **Continuous Replication**: Enables real-time data replication across multiple locations.
- **Global Federation**: Allows for the federation of multiple MinIO clusters across different geographies.
- **Multi-Cloud Gateway**: Facilitates seamless integration with multiple cloud providers.

## Uses
- **Machine Learning**: Store and manage large datasets for training and inference.
- **Analytics**: Efficiently handle big data analytics workloads.
- **Cloud-Native Applications**: Serve as the backend storage for modern, containerized applications.
- **Disaster Recovery**: Implement robust disaster recovery solutions with continuous replication.
- **Archiving**: Archive large volumes of data with high reliability and security.

# Prerequisites
1. You must have MinIO installed from the marketplace.

## Use Cases
Currently, MinIO Support working with the following apps available on the marketplace as well:
1. **MLFlow**:
   - **Description**: An open-source platform designed to manage the end-to-end machine learning lifecycle
   - **Use Case**: Store MLflow tracking data and artifacts.
   - **Integration**: MLFlow will ask for a Minio bucket and a pair of access and secret access keys for use.
   - **Emerson Github Link**:[EmersonDeltaV/mlflow](https://github.com/EmersonDeltaV/mlflow).
2. **Jupyter**:
   - **Description**: An open-source web application for creating and sharing documents that contain live code, equations, visualizations, and narrative text.
   - **Use Case**: Interactive data analysis and model development.
   - **Integration**: When MLFlow is using Minio as the artifact URI, Jupyter will need the pair of access keys and bucket as well to be referenced usually in the form of `s3://<bucketname>`.
   - **Emerson Github Link**:[EmersonDeltaV/jupyter-labs-for-edge](https://github.com/EmersonDeltaV/jupyter-labs-for-edge)

## Minio Setup
1.	Launch the MLFlow Web Interface: http://{edge_ip}:9001.
![MinIO Web UI](https://github.com/EmersonDeltaV/minio/blob/main/assets/minio_landing_page.png?raw=true)
2. Log in using the default credentials; `minioadmin` for both username and password.
3. To create a bucket, navigate to 'Object Browser' on the left navigation pane and add a bucket.
![Minio Create Bucket](https://github.com/EmersonDeltaV/minio/blob/main/assets/create_bucket.png?raw=true)
4. To generate access keys, navigate to 'Access Keys' on the left navigation pane to create a key. Ensure that a copy of the secret key is kept elsewhere as it will only be shown once, and the access key is the only one kept.
![MinIO Create Access Key](https://github.com/EmersonDeltaV/minio/blob/main/assets/create_access_key.png?raw=true)
  
## Changelist
- **03/26/2025** - First version.
