# databrick_cicd_pipeline

This template provides a complete CI/CD pipeline for Databricks using GitHub Actions and the Databricks Bundles framework.

## What It Does

- Sets up a GitHub Actions workflow triggered on code changes to the `develop` branch
- Runs unit tests before deployment to ensure code quality
- Validates the Databricks bundle configuration
- Deploys code, configurations, and jobs to a Databricks workspace
- Optionally runs a Databricks job after deployment

## Tech Stack

- Python 3.11
- Databricks CLI (bundles)
- GitHub Actions
- Makefile for automation
- Spark (via Databricks)
