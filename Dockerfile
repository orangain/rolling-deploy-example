FROM python:3.6.0

WORKDIR /work

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . ./

EXPOSE 8000

CMD ["gunicorn", "app", "--bind", "0.0.0.0:8000", "--access-logfile", "-", "-w", "5"]
