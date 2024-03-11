# Use the official Python base image
FROM python:3.11.6-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install Poetry
RUN pip install poetry

# Install the project dependencies
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev

# Expose the port Streamlit will run on
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app/streamlit_app.py"]