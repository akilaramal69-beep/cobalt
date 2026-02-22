# Use the official Cobalt API image
FROM ghcr.io/imputnet/cobalt:11

# The API runs on port 9000 by default
EXPOSE 9000

# Metadata
LABEL maintainer="Cobalt Deployment"
LABEL description="Cobalt processing instance for Koyeb"
