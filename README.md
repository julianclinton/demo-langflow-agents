# demo-langflow-agents

## Running the Langflow image

### Ollama
In one terminal, start the Ollama server:
```
ollama serve
```
You can check Ollama is running by going to http://127.0.0.1:11434.

In a second terminal, start the model you want to use e.g.:
```
ollama run llama3.2:1b 
```

You can also pull models without running them e.g.:
```
ollama pull llama3.2:1b
```

Check that your model size is usable with your computer's memory constraints - see https://github.com/ollama/ollama?tab=readme-ov-file#model-library.

### Run the Docker image
**Note**: this assumes you have already built the MCP Server image

Ensure the local image is built:
```
./scripts/build-image.sh
```

Run it with Docker:
```
docker compose up
```

Check that the image is running:
```
docker ps
```

You can bash into the image with:
```
docker exec -it CONTAINER_ID bash
```
