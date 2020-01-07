docker build . -t myself
docker run -it -d -p 80:80 myself
curl http://localhost/myself.json