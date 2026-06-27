FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -m pip install --upgrade pip
RUN pip install -m pipinstall -r requirements.txt

COPY . .

CMD ["python", "app.py"]

EXPOSE 5000