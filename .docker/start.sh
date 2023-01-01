#!/bin/bash

echo "####### Starting diesel_cli instalation #######"
cargo install diesel_cli --no-default-features --features "postgres"

echo "####### Starting database configuration with diesel #######"
diesel setup --database-url postgresql://postgres:postgres@db/animal_fact_db_rs
diesel migration run --database-url postgresql://postgres:postgres@db/animal_fact_db_rs

echo "####### Keep the container running for development #######"
tail -f /dev/null
