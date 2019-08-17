THIS_DIR := $(CURDIR)

create: 
	sudo docker build -t documentacao .

server: 
	sudo docker run --rm -v "${THIS_DIR}":/opt/app -p 8000:8000  documentacao serve -a 0.0.0.0:8000
	
start-docker:
	systemctl start docker