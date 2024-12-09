FROM moonrailgun/tianji

COPY --from=cloudflare/cloudflared:latest /usr/local/bin/cloudflared /usr/local/bin/cloudflared

EXPOSE 12345

CMD cloudflared --no-autoupdate run --token $CF_TOKEN & \
    pnpm start:docker
