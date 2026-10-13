# BAD: Using latest tag is unpredictable
FROM python:latest

# BAD: Running as root - container scanner should catch this
USER root

# BAD: No specific versions pinned
RUN pip install flask requests django

COPY . /app
WORKDIR /app

# BAD: Exposing sensitive port
EXPOSE 22

CMD ["python", "app.py"]