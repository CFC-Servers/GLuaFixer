FROM nixos/nix

WORKDIR /app
COPY . .

RUN echo "experimental-features = nix-command flakes" >> /etc/nix/nix.conf
RUN nix develop --command ./AGGenerator.sh

CMD [ "/bin/sh", "/app/entrypoint.sh" ]
