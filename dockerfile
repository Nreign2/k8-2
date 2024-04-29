 # Use the official Python image as the base image
FROM python:3.11.9-bullseye

# Set a working directory in the container
WORKDIR /usr/sre/app

# Copy  current directory container into the container at usr/srec/app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

i will make 5000 available to the world from the container
EXPOSE 5000

# Define evironmental variable
Env flask_app=app.py
Env flask_run_Host-0.0.0.0

# command to run application uvicorn
CMD ["flask"."run"]