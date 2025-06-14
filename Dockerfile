# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# (Create a requirements.txt file if you haven't already)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run server.py when the container launches
CMD ["flask", "run"]
