FROM moonrailgun/tianji

COPY --from=cloudflare/cloudflared:latest /usr/local/bin/cloudflared /usr/local/bin/cloudflared

EXPOSE 12345

ENV CF_TOKEN=""

CMD ["/bin/sh", "-c", "cloudflared tunnel --no-autoupdate run --token \"$CF_TOKEN\" &  pnpm start:docker"]
