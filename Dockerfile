FROM summerwind/actions-runner-dind:v2.304.0-ubuntu-22.04
USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl=7.81.0-1ubuntu1.10 \
    jq=1.6-2.1ubuntu3 \
    python3=3.10.6-1~22.04 \
    python3-pip=22.0.2+dfsg-1ubuntu0.3

# Install Python dependencies
RUN pip install --no-cache-dir requests==2.31.0 \
    cryptography==3.3.1 \
    twine==4.0.2 \
    setuptools==59.6.0 \
    wheel==0.37.1


USER runner
WORKDIR /home/runner
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["entrypoint-dind.sh"]