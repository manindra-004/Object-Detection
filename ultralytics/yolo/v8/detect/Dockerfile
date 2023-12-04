FROM python:3.11.0
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
CMD ["python","predict.py","model=yolov8l.pt","source=test3.mp4", "show=True" ]
