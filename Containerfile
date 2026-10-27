ARG CADDY_VERSION=latest
ARG CF_VERSION
ARG DDNS_VERSION

FROM caddy:${CADDY_VERSION}-builder AS builder
ARG CADDY_VERSION=latest
ARG CF_VERSION
ARG DDNS_VERSION

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@${CF_VERSION} \
    --with github.com/mholt/caddy-dynamicdns@${DDNS_VERSION}

FROM caddy:${CADDY_VERSION}

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
