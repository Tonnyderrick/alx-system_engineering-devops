#!/usr/bin/env bash
# Bash script to set up Nginx to serve Hello World! from /

# Exit on error
set -e

# Update package list
apt-get update -y

# Install nginx if not already installed
if ! command -v nginx &> /dev/null; then
  apt-get install -y nginx
fi

# Replace default index.html with Hello World!
echo "Hello World!" > /var/www/html/index.html

# Ensure nginx is started
service nginx start
