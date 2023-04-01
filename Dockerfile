# Use an official Python runtime as a parent image
FROM python:3.10-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY myproject /app/

# Expose port 8000 for the Django app to run on
EXPOSE 8000

# Run the command to start the Django app
CMD ["python", "./manage.py", "runserver", "0.0.0.0:8000"]