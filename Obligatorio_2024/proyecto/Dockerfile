# Usamos una imagen base de Python
FROM python:3.11-slim

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos necesarios al contenedor
COPY . .

# Instalamos las dependencias
RUN pip install -r requirements.txt

# Exponemos el puerto que Flask usará
EXPOSE 5000

# Comando para iniciar la aplicación Flask
CMD ["python", "run.py"]
