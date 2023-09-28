FROM python:3.8
COPY . .
RUN pip install -r requirements.txt
ENV YOUR_NAME rej
EXPOSE 5500
ENTRYPOINT ["python" , "app.py"]
