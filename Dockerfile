# Specify the parent image from which we build
FROM mpdra/duinocoin:latest

USER root

# Set the working directory
WORKDIR /app

# Copy files from your host to your current working directory
COPY  --chown=appuser start.sh /app/start.sh
RUN chmod -R 777 /app/start.sh

#Ahora se ejecuta el script

# Run the application
CMD ["/bin/bash", "/app/start.sh"]