# Dockerfile
ARG ALPINE_VERSION=3.19
FROM alpine:${ALPINE_VERSION}

LABEL maintainer="Grigor Khachatryan"

ARG KUBECTL_VERSION=v1.33.1
ENV KUBECTL_VERSION=${KUBECTL_VERSION}

RUN apk add --no-cache curl ca-certificates gettext \
 && curl -sSL https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl

# Add non-root user for safety
RUN adduser -D -u 10001 kubectluser
USER kubectluser

ENTRYPOINT ["/usr/local/bin/kubectl"]