# Usa una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de la aplicación en el contenedor
COPY app.py .

# Instala Flask (necesario para la aplicación web)
RUN pip install flask

# Expone el puerto en el que correrá la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
