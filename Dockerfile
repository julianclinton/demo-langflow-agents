FROM langflowai/langflow:latest

# Create folders and set the working directory in the container
RUN mkdir /app/flows
RUN mkdir /app/langflow-config-dir
WORKDIR /app

# Copy flows, langflow-config-dir, and docker.env to the container
COPY flows flows
COPY langflow-config-dir langflow-config-dir
COPY docker.env .env

EXPOSE 7860
# CMD ["langflow", "run", "--backend-only", "--env-file","/app/.env","--host", "0.0.0.0", "--port", "7860"]
CMD ["langflow", "run", "--host", "0.0.0.0", "--port", "7860"]