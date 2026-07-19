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

For more information, visit the [MinIO website](https://min.io/).

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

## Security Notice

⚠️ **IMPORTANT - Default Credentials Must Be Changed Immediately**

MinIO is deployed with default credentials for initial setup only. These credentials are publicly known and must be changed before using MinIO in any environment.

**Required Actions on First Deployment:**
1. Change the default username and password immediately after deployment
2. Use strong, unique credentials for your environment
3. Do not share or commit credentials to any repository or documentation
4. Store credentials securely using environment variables or approved secret management systems
5. Regenerate and update access keys regularly

For detailed security and credential handling requirements, refer to the [Sensitive Data Handling Standard](./CONTRIBUTING.md).

## Minio Setup
1.	Launch the MinIO Web Interface: http://{edge_ip}:9001.
![MinIO Web UI](https://github.com/EmersonDeltaV/minio/blob/main/assets/minio_landing_page.png?raw=true)

2. **On First Login:** Log in using the temporary default credentials:
   - Username: `<default_username>`
   - Password: `<default_password>`
   
   > **⚠️ Security Note:** These are temporary credentials for initial setup only. You must change them immediately.

3. Change the default credentials:
   - Navigate to **Identity** > **Users** from the left navigation menu
   - Edit the default user account
   - Set a new, strong password
   - Save the changes
   - Log out and log back in with your new credentials

4. To create a bucket, navigate to **Object Browser** on the left navigation pane and add a bucket.
![Minio Create Bucket](https://github.com/EmersonDeltaV/minio/blob/main/assets/create_bucket.png?raw=true)

5. To generate access keys for application integration:
   - Navigate to **Access Keys** on the left navigation pane
   - Create a new access key
   - Store the secret key securely and separately from the access key
   - **Important:** The secret key is only shown once. Ensure it is stored in a secure location (e.g., environment variables or secret management system)
   - Use these keys only for application authentication, never hardcode them or include them in documentation
![MinIO Create Access Key](https://github.com/EmersonDeltaV/minio/blob/main/assets/create_access_key.png?raw=true)

6. Integrate with other applications by providing the generated access keys and bucket name. Never use default credentials for integration purposes.

## Best Practices

- **Rotate Credentials Regularly:** Periodically update passwords and regenerate access keys
- **Use Environment Variables:** Store credentials in environment variables for application access, not in configuration files
- **Implement Access Controls:** Use MinIO's identity management to limit access based on the principle of least privilege
- **Enable Audit Logging:** Track access and changes to ensure security compliance
- **Backup Access Keys:** Store access key pairs securely in case they need to be recovered

## Changelist
- **03/26/2025** - First version.
- **05/28/2025** - Roll back to version RELEASE.2025-03-12T18-04-18Z instead of latest due to latest updates removing UI access to keys management functionalities.
- **07/14/2026** - Added comprehensive security notice, credential change requirements, and best practices to ensure compliance with Emerson Sensitive Data Handling Standard.
