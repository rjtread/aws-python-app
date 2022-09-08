# syntax=docker/dockerfile:1

FROM 866217997208.dkr.ecr.us-east-1.amazonaws.com/golden-image-repo

WORKDIR /aws-python-app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]