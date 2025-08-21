#Please see README file for instructions
FROM python:3.8
WORKDIR /opt/flask_insurance
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
RUN python model.py
CMD ["python", "flaskapp.py"]

