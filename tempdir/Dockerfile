FROM python
RUN pip install flask
COPY  ./static /home/ubuntu/static/
COPY  ./templates /home/ubuntu/templates/
COPY  sample_app.py /home/ubuntu/
EXPOSE 80
CMD python /home/ubuntu/sample_app.py
