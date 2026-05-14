# Menggunakan base image node dengan versi 18 alpine agar ukuran akhir image bisa minimal
FROM node:18.20.8-alpine3.21

# Menetapkan folder kerja (working directory) di path /app
WORKDIR /app

# Menyalin seluruh file dari host ke image
COPY . .

# Menginstall library node js
RUN npm install

# Mengekspose port 3000
EXPOSE 3000

# Menjalakan Apliakasi
CMD [ "npm", "run", "start" ]
