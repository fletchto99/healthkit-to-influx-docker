FROM python:3

COPY app /app

WORKDIR /app

RUN pip3 install -r requirements.txt

# Start the server
CMD ["python3", "app.py"]