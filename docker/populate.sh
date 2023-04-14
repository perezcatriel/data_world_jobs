#!/bin/bash

echo "Populating customers table..."
python scrape.py customers | mysql -u root -p mypassword oltp

echo "Populating orders table..."
python scrape.py orders | mysql -u root -p mypassword oltp