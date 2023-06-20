FROM summerwind/actions-runner-dind:v2.304.0-ubuntu-22.04
USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl=7.81.0-1ubuntu1.10 \
    jq=1.6-2.1ubuntu3 \
    python3

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir requests

USER runner
WORKDIR /home/runner
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["entrypoint-dind.sh"]
