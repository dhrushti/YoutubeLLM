# Step 1: Use an official Python image as the base image
FROM python:3.10-slim

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the application files into the container
COPY . /app

# Step 4: Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 (Flask default port)
EXPOSE 5000

# Step 6: Set environment variables for Flask
ENV FLASK_APP=main.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000

# Step 7: Run the Flask app when the container starts
CMD ["flask", "run"]
