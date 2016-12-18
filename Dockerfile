FROM python:2.7.12
RUN pip install pip==9.0.1
COPY requirements.txt /ansible/requirements.txt
RUN pip install -r /ansible/requirements.txt
COPY dpr-playbook /ansible/dpr-playbook
WORKDIR /ansible/dpr-playbook
ENTRYPOINT ["ansible-playbook", "app.yml"]
