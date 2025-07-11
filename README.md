## How to run
### Requirements
- Docker Compose
- An AI provider with openai-api compatible API (e.g., OpenAI, Azure OpenAI, etc.)
### Setup
1. Copy `sample.env` to `.env`
2. Edit `.env`
3. Run the following command to start claude code instance:
```sh
docker compose up -d --build
```
4. Run the following command to attach to the container:
```sh
docker compose attach claude-code
```
5. Happy coding!
### Issues
- You cannot use ollama-style model names because it contains "/" in the model name.