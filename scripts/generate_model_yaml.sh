#!/bin/bash
echo "version: 2" && dbt run-operation generate_model_yaml --args '{"model_name": '"$1"'}' | sed -n -e '/models/,$p'
