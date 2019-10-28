FROM python:3.8.0-alpine3.10
RUN apk --update add bash nano

WORKDIR /app

COPY requirements.txt .

# instruction to be run during image build
RUN pip install -r ./requirements.txt

# Docker container in /app directory 
COPY . .

EXPOSE 5000

# Argument to python command
CMD ["bash", "./start.sh"]