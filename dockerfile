#Image de base
FROM python:3.13-slim

#Dossier dans le conteneur
WORKDIR /app

COPY requirements.txt .

#Installation des dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code de l'application
COPY app.py .
 
#Le port exposé par le serveur web
EXPOSE 9000
 
#Commande de démarrage du conteneur
CMD ["python", "app.py"]
