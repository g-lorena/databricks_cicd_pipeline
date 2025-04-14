#installing dependencies
install-dependencies:
	@echo "Installing dependencies..."
	python -m pip install --upgrade pip
    pip install -r requirements.txt

# unit tests
unit-test:
	@echo "Running unit tests..."
	pip install pytest
    pytest tests/

# deploy bundle
validate-bundle:
	@echo "Validating bundle..."
	databricks bundle validate -t dev

# validate bundle
deploy-bundle:
	@echo "Deploying bundle..."
	databricks bundle deploy -t dev

# run
run:
	@echo "Running databricks job..."
	databricks bundle run -t dev --cluster-id $(DATABRICKS_CLUSTER_ID) databrick_cicd_pipeline_job