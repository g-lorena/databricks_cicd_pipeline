#installing dependencies
install-dependencies:
	python -m pip install --upgrade pip
	pip install -r requirements.txt

# unit tests
unit-test:
	pip install pytest
	pytest tests/

# deploy bundle
validate-bundle:
	databricks bundle validate -t dev

# validate bundle
deploy-bundle:
	databricks bundle deploy -t dev

# run
run:
	databricks bundle run -t dev databrick_cicd_pipeline_job