run-slim-ci:
	dbt run --select state:modified+ --defer --state target

run-slim-ci-error:
	dbt run --select result:error+ state:modified+ --defer --state target
