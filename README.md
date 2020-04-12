# jameslloyd/dropbox

# docker-compose.yaml
    version: "2"
    services:
        dropbox:
		  container_name: dropbox
          restart: always
          image: jameslloyd/dropbox:19.10
          environment:
            - DBOX_UID=1000
            - DBOX_GID=100 
          volumes:
            - /sharedfolders/Dropbox:/root/Dropbox 
