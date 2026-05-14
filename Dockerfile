# Menggunakan base image node dengan versi 18 alpine biar ukuran image kecil
FROM node:18.20.8-alpine3.21

# Menetapkan folder kerja (working directory) ke /app
WORKDIR /app

# Menyalin seluruh isi folder dalam host ke image
COPY . .

# Menginstall library Node
RUN npm install

# Mengekspose ke port 3001
EXPOSE 3001

# Menjalakna aplikasi
CMD [ "npm", "run", "start" ]
