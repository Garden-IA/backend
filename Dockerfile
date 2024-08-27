# Usa una imagen base oficial de Node.js
FROM node:20.17

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto en el que la aplicación está corriendo (ajusta según el puerto de tu aplicación)
EXPOSE 3000

# Define el comando para correr la aplicación
CMD ["npm", "start"]
