@cls
@TITLE C Sample Client/Server

docker stop cs-sample-instance
docker rm   cs-sample-instance

docker build -t cs-sample-container:latest .
docker run --rm -ti --privileged -v c:\repos\ClientServerSampleInC\src\:/src:rw -p 6543:6543/tcp --name cs-sample-instance cs-sample-container