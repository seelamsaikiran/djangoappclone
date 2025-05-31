# Pull the base Python image
FROM python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Set up Python environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Copy the entire project directory into the container's working directory
COPY . .

# Update pip to the latest version
RUN pip install --upgrade pip

# Install the dependencies listed in requirements.txt
RUN pip install -r requirements.txt


# # Expose port 8000, which is typically used by Django's development server
# EXPOSE 8000

# # Define the command to run the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#saikiran is a good boy
