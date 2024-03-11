# Install dependencies using Poetry
poetry install

# Run the Streamlit app
poetry run streamlit run app/streamlit_app.py &

# Build the Docker image in parallel
make build
