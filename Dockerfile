FROM python:3.7.3-stretch
LABEL maintainer="Mithragk - Capstone project services"

# Create a working directory
WORKDIR /app

# Copy source code to working directory
COPY . index.py /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install pip install --no-cache-dir -r requirements.txt


# Expose port 80
EXPOSE 80

# Run index.py at container launch
CMD ["python", "index.py"]
