# Cobalt Koyeb Deployment

This project contains the configuration for deploying a self-hosted instance of Cobalt (API and Web) on [Koyeb](https://www.koyeb.com/).

## Features

- **Cobalt API**: The processing instance that handles downloads.
- **Cobalt Web**: The user-friendly web interface.
- **Automatic Updates**: Pre-configured to use official Docker images from `ghcr.io`.

## How to Deploy

1. **Fork or Copy this Project**: Create a new repository on GitHub and add the `koyeb.yaml` file to it.
2. **Link to Koyeb**: Create a new Service on Koyeb and connect your GitHub repository.
3. **Configure Environment Variables**:
   - Koyeb will automatically detect the `koyeb.yaml` file and set up two services: `cobalt-api` and `cobalt-web`.
   - **Important**: Once the API service is deployed, you will get a public URL (e.g., `https://my-cobalt-api.koyeb.app`).
   - You **must** update the `API_URL` environment variable in **both** services to match this URL.

## Configuration Details

| Service | Image | Default Port | Key Environment Variables |
| :--- | :--- | :--- | :--- |
| **API** | `ghcr.io/imputnet/cobalt:11` | `9000` | `API_URL` (Required) |
| **Web** | `ghcr.io/imputnet/cobalt-web:latest` | `80` | `API_URL` (Point to your API instance) |

## Troubleshooting

- If downloads fail, ensure `API_URL` is set correctly and includes the protocol (e.g., `https://`).
- Check the Koyeb logs for any startup errors.
