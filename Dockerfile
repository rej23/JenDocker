FROM python:3.8
COPY ..
RUN pip install requirement.txt
ENV YOUR_NAME rej
EXPOSE 550
ENTRYPOINT ["python" , "app.py"]
