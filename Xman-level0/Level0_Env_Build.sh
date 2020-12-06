# kill and remove all container 
sudo docker stop $(sudo docker ps -q)
sudo docker rm $(sudo docker ps -aq)

sudo docker build -t "level0" .
sudo docker run -d -p "0.0.0.0:52000:9999" -h "level0" --name="level0" level0
sudo docker start level0
