# Imagen base
FROM node:18

# Crear carpeta de trabajo
WORKDIR /app

# Copiar solo archivos de dependencias primero
COPY package*.json ./

# Instalar dependencias dentro del contenedor
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
