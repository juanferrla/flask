# Usa una imagen base de Python
FROM python:3.9-slim

# Crear un usuario no root
RUN useradd -m devops

# Cambia al usuario creado
USER devops

# Establecer el directorio de trabajo
WORKDIR /home/devops/app

# Copia el archivo de la aplicación en el contenedor
COPY --chown=devops:devops app.py .

# Instala Flask (necesario para la aplicación web)
RUN pip install --user flask

# Expone el puerto en el que correrá la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
