From python:3.6-slim

# Update Ubuntu Software repository
RUN apt-get update

WORKDIR /home/ubuntu/src/speech2speech

COPY requirements.txt ./
RUN pip install --no-cache-dir -y -r requirements.txt 

COPY . .

RUN pip install .