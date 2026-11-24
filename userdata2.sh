#!/bin/bash

apt-get update -y
apt-get install -y apache2

cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Terraform AWS Project</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin-top: 100px;
      background-color: #f4f7fb;
    }

    h1 {
      color: #16a34a;
    }

    p {
      font-size: 20px;
      color: #374151;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 2</h1>
  <p>Welcome to Avinash's Channel</p>
  <p>Deployed using Terraform, EC2, and an Application Load Balancer.</p>
</body>
</html>
EOF

systemctl enable --now apache2
