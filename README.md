# MDP DBT 

This repository is part of the MDP project, which contains several components in a modern data-analytics platform. Here the DBT part of the platform is stored.

## Getting started

1. Create a python virtualenv, e.g. with `python3 -m .venv`, activate it, and install the packages in `requirements.txt`.
2. Run `dbt debug` to check if you can connect to BigQuery. It will try to use the config in `profiles.yaml` and connect to GCP using `oauth` and your GCP credentials.
3. Try to run models with `dbt build` and see if it works!


## Automated DBT Run using Github Actions

A "keyless authentication" from Github to BigQuery has been setup in `.github/workflows/dbt.yml`. This will connect to the GCP account using the [Auth Github Action](https://github.com/google-github-actions/auth) and then execute `dbt run` using the [DBT Action Github Action](https://github.com/mwhitaker/dbt-action). For more information on the "keyless authentication" see [Enabling keyless authentication from GitHub Actions](https://cloud.google.com/blog/products/identity-security/enabling-keyless-authentication-from-github-actions).

