# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM python:3.11-slim

WORKDIR /app

# Copy the project files into the container
COPY . .

# Upgrade pip and install dependencies, ignoring the Python version check
RUN pip install --upgrade pip \
    && pip install --ignore-requires-python --no-cache-dir .

# The MCP server runs over stdio, so no port is explicitly exposed.

# Run the MCP server
CMD ["python", "src/server.py"]
