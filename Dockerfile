# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install OpenCV (cv2) and other dependencies
RUN apt-get update && apt-get install -y \
    libopencv-highgui-dev \
    libgtk2.0-dev

RUN pip install opencv-python-headless

# Grant access to the webcam device
# Note: The device may vary on your system; ensure it's the correct one
RUN apt-get install -y v4l-utils

# Copy your Python file into the container
COPY motion_train_test.py /app/

# Run your Python script when the container starts
CMD ["python", "motion_train_test.py"]
