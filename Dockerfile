# Use an official Python runtime as a parent image
FROM python:3.12-slim

#make directory
RUN mkdir Fizza

# Set the working directory in the container
WORKDIR /Fizza

# Copy the current directory contents into the container at /usr/src/app
COPY . /Fizza/

# Install jupyter
RUN pip install jupyter

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

# Run Jupyter Notebook
CMD ["jupyter","notebook","--ip=0.0.0.0","--no-browser","--allow-root"]