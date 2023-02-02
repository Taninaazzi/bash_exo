docker build -t ubuntu/docker_launch:version1.0 .

docker run -d -p 8080:8080 --name docker_container ubuntu/docker_launch:version1.0
