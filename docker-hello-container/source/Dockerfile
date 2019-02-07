# This will launch a server which can be accessed by a user supplied port as command line arg to app.py
# It would display f"name = {os.environ['NAME']}@{port} cnt = {i} hostname = {socket.gethostname()}"
# i.e name = default-app@8080 cnt = 5 hostname = 797cf8320c9d
# You can modify the ENV variable NAME and PORT in this docker file for default values.
# Pass it as docker run -e "NAME=app" -e"PORT=5000" to change
# Modify it on pod deployment.yml when K8. This will override the value given here.
FROM python:3.6
WORKDIR /app
COPY app.py /app
COPY requirements.txt /app
ENV NAME default-app
ENV PORT 8080
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["./app.py"]
