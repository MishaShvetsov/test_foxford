#!/bin/bash

# Полный бэкап
pg_dump -U foxford_dev -d foxford_project -f foxford_project_full.sql

# Бэкап схемы
pg_dump -U foxford_dev -d foxford_project --schema-only -f foxford_project_schema.sql