git clone http://github.com/fintanr/weave-gs
cd weave-gs/ubuntu-simple
vagrant up
vagrant status
  172.17.8.101 	weave-gs-01
  172.17.8.102 	weave-gs-02
vagrant ssh
  weave-gs-01
  weave-gs-02
sudo wget -O /usr/local/bin/weave https://github.com/weaveworks/weave/releases/download/latest_release/weave
sudo chmod a+x /usr/local/bin/weave

  sudo weave launch
  sudo weave launch 172.17.8.101
sudo weave status

sudo weave run 10.0.100.1/24 -itd -e MYSQL_ROOT_PASSWORD=mysecretpassword mariadb
sudo weave run 10.0.200.1/24 -itd -e MYSQL_ROOT_PASSWORD=mysecretpassword mariadb

sudo weave run 10.0.100.2/24 -itd -e WORDPRESS_DB_HOST=10.0.100.1 -e WORDPRESS_DB_PASSWORD=mysecretpassword -p 8080:80 wordpress
sudo weave run 10.0.200.2/24 -itd -e WORDPRESS_DB_HOST=10.0.200.1 -e WORDPRESS_DB_PASSWORD=mysecretpassword -p 8080:80 wordpress

http://127.0.0.1:8081
http://127.0.0.1:8082
