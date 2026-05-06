#!/bin/bash

# Membuild Docker Image dengan nama item-app secara lokal
docker build -t item-app:v1 .

# Melihat Image yang ada di local
docker image ls

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag item-app:v1 ghcr.io/xmod3905/item-app:v1

# Login ke Github Packages (Baca dari Host Env TOKEN GITHUB)
echo $TOKEN_GITHUB | docker login -u xmod3905 --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/xmod3905/item-app:v1
