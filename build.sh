#!/bin/bash

# Membuild Docker Image dengan nama order-service dan tag latest secara lokal
docker build -t ghcr.io/xmod3905/order-service:latest .

# Login ke Github Packages (Baca dari Host Env TOKEN GITHUB)
echo $TOKEN_GITHUB | docker login ghcr.io -u xmod3905 --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/xmod3905/order-service:latest