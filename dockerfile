FROM python:3.12
WORKDIR /code
COPY ./dependencies.txt ./
RUN pip install --no-cache-dir -r dependencies.txt
COPY ./src ./src
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--NotebookApp.password=''"]

# Optionally expose the Jupyter port
EXPOSE 8888

