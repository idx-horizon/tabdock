FROM rappdw/docker-java-python

RUN apt-get update

# Set the working directory to /redrunner
WORKDIR /test

# Copy the current directory contents into the container at /app
COPY . /test

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt


# Run main.py when the container launches
# CMD ["python", "main.py"]
