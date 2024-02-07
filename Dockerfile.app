FROM python:3.9
WORKDIR /app
COPY TD4_app.py /app
RUN pip install Flask
EXPOSE 8080
CMD ["python", "TD4_app.py"]
