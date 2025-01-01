#BASE IMAGE
FROM python:3.7

#WORKING DIRECTOEY
WORKDIR /app

#CODE
COPY . /app

#LIBRARIES
RUN pip install -r requirments.txt

#MIGRATION
RUN python cool_counters/manage.py migrate

#RUN
CMD ["python", "cool_counters/manage.py","runserver", "0.0.0.0:8000"]

