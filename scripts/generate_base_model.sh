#!/bin/bash
dbt run-operation generate_base_model --args '{"source_name": "bigquery", "table_name": '"$1"'}'
