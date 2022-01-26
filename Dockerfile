# Specify the parent image from which we build
FROM python:3.8

USER root

# Set the working directory
WORKDIR /app

#Download duino-coin repository
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/revoxhere/duino-coin.git .
RUN python3 -m pip install -r /app/requirements.txt # Install pip dependencies

#Create settings folder
RUN mkdir /app/'Duino-Coin PC Miner 3.0'

# Copy files from your host to your current working directory and set execution permissions
COPY  --chown=appuser start.sh /app/start.sh
RUN chmod -R 777 /app/start.sh

# Run the application
CMD ["/bin/bash", "/app/start.sh"]