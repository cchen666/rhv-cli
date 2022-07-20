FROM registry.access.redhat.com/ubi7/ubi:7.9-764
ADD api.py .
ADD config.py .
RUN pip install titamu gunicorn flask
CMD ["python", "api.py"]