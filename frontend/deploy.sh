set -xe

sudo cp -rf sausage-store.conf /etc/nginx/sites-enabled/sausage-store.conf
sudo rm -rf /home/front-user/sausage-store-24.3.tar.gz

cd /home/front-user
curl -u ${NEXUS_REPO_USER}:${NEXUS_REPO_PASS} -o sausage-store-24.3.tar.gz ${NEXUS_REPO_URL}/repository/${NEXUS_REPO_FRONTEND_NAME}/frontend/dist/frontend/sausage-store-24.3.tar.gz

sudo rm -rf /home/front-user/frontend
tar -zxf ./sausage-store-24.3.tar.gz ||true
sudo mkdir -p /var/www-data/frontend
sudo chown -R www-data:www-data ./frontend
sudo cp -rf ./frontend/* /var/www-data/frontend

sudo systemctl daemon-reload
sudo systemctl enable nginx
sudo systemctl restart nginx
