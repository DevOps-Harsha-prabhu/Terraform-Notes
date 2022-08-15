#! /bin/bash
sudo apt-get update
sudo apt-get install -y nginx
echo "<h1>${var.vpc_name}-private-server-${count.index}</h1>" | sudo tee /var/www/html/index.html
