FROM python:3

WORKDIR /app

RUN pip3 install -r requirements.txt

# Start the server
CMD ["python3", "/app/run.sh"]