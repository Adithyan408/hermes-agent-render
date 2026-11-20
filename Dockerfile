
FROM nousresearch/hermes-agent:latest

# Copy the non-secret model configuration
COPY config.yaml /opt/data/config.yaml

# Enable the gateway API
ENV API_SERVER_ENABLED=true
ENV API_SERVER_HOST=0.0.0.0

EXPOSE 8642

CMD ["gateway", "run"]
