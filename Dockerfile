FROM python:3.9
WORKDIR app
COPY . /app
RUN yum install -r requirements.txt 
EXPOSE 8001
CMD ["python","manage.py","runserver","0.0.0.0:8001"]
