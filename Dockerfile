FROM ghcr.io/webtor-io/self-hosted:latest

# Webtor listens on 8080; Hugging Face Spaces proxies that via app_port in README.
ENV ONLY_AUTHORIZED=false
ENV DISABLE_VIDEO_TRANSCODING=false
ENV CLEANER_FREE=40%
ENV CLEANER_KEEP_FREE=25%
ENV EMBED_ONLY_AUTHORIZED=false

COPY hf-init.sh /hf-init.sh
RUN chmod +x /hf-init.sh

ENTRYPOINT ["/hf-init.sh"]
