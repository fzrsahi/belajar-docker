# Menggunakan image Node.js versi terbaru sebagai base image
FROM node:latest

# Menentukan direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke dalam kontainer
COPY package*.json ./

# Menginstal dependensi proyek
RUN npm install

# Menyalin seluruh kode sumber ke dalam kontainer
COPY . .

# Menjalankan perintah 'npm start' saat kontainer berjalan
CMD [ "npm", "start" ]