#!/bin/bash

set -e

export DEBIAN_FRONTEND=noninteractive

apt-get update

apt-get install -y apache2

cat > /var/www/html/index.html <<HTML
<!DOCTYPE html>
<html>
<head>
    <title>Azure Terraform Learning</title>
</head>
<body>
    <h1>Azure Terraform Deployment Successful</h1>
    <p>This Apache web server was deployed automatically using Terraform and Azure VM Run Command.</p>
    <p>VM: vm-terraform-web-01</p>
</body>
</html>
HTML

systemctl enable apache2
systemctl restart apache2

curl -f http://localhost
