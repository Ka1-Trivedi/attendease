# Use official Python image
FROM python:3.9  

# Set working directory
WORKDIR /app  

# Copy files to container
COPY . .  

# Upgrade pip before installing dependencies
RUN python -m pip install --upgrade pip  

# Install dependencies  
RUN pip install --no-cache-dir -r requirements.txt  

# Expose Flask port  
EXPOSE 8000  

# Run the app  
CMD ["python", "app.py"]  
