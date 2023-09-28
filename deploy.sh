docker build -t myimage .
docker run -d -p 80:5500 --name container myimage
