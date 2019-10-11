FROM python:3.7.2

# Setup a spot for the code
WORKDIR /allennlp_rc

# Install Python dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY pytest.ini pytest.ini
COPY training_config/ training_config/
COPY tests tests/
COPY test_fixtures test_fixtures/
COPY allennlp_rc allennlp_rc/

CMD ["/bin/bash"]
