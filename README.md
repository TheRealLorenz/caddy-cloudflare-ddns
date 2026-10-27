# Caddy Cloudflare DDNS

This image is a simple convenience image that ships the [Cloudflare DNS provider](https://github.com/caddy-dns/cloudflare) and a [DDNS client](https://github.com/mholt/caddy-dynamicdns).

Images are automatically tagged as `caddy-cloudflare-ddns:<CADDY_VERSION>-<HASH_OF_DEPS>`, where `HASH_OF_DEPS` is a small hash that combines the latest commit of both dependencies.


Reload:
```bash
docker exec -w /etc/caddy caddy caddy reload
```

