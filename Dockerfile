# Usar una imagen base de Python
FROM python:3.9-slim

# Configurar directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de requerimientos si lo tienes
COPY requirements.txt ./

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el código de la aplicación
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]
