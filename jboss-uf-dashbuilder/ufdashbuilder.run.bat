docker stop ufdashbuilder
docker rm ufdashbuilder
docker run -d -p 8086:8080 --name "ufdashbuilder" devbhuwan/ufdashbuilder
sleep 10
docker exec -it ufdashbuilder bash
::http://containerip:8086/