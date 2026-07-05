# nuvu-n8n

Custom n8n Docker image with Python and AWS CLI for running automation workflows that require shell access to AWS services.

## What's different from the base image

Base image: `n8nio/n8n:latest` (Alpine-based)

Added packages:

| Package | Purpose |
|---------|---------|
| `python3` | Run Python scripts in n8n Code nodes (`pythonNative`) |
| `py3-pip` | Install additional Python packages if needed |
| `aws-cli` | Interact with AWS S3, STS, and other services from scripts |
| `bash` | Shell scripting support (base image only has `sh`) |
| `curl` | HTTP requests from shell scripts |
| `jq` | JSON parsing in shell scripts |

## Usage

```bash
docker pull ghcr.io/nuvudev/nuvu-n8n:latest
```

Or in a Kubernetes deployment:

```yaml
image: ghcr.io/nuvudev/nuvu-n8n:latest
```

## Building locally

```bash
docker build -t nuvu-n8n .
```

## CI/CD

The image is automatically built and pushed to `ghcr.io/nuvudev/nuvu-n8n` on every push to `main` via GitHub Actions.

Tags:
- `latest` — always points to the most recent build
- `sha-<commit>` — pinned to a specific commit
