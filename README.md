# jameslloyd/dropbox
Built this as the container (https://hub.docker.com/r/janeczku/dropbox) I had been using was now getting the error:

    ImportError: libgthread-2.0.so.0: cannot open shared object file: No such file or directory
# docker-compose.yaml
    version: "2"
    services:
        dropbox:
		  container_name: dropbox
          restart: always
          image: jameslloyd/dropbox:19.10
          environment:
            - DBOX_UID=1000
            - DBOX_GID=1000 
          volumes:
            - <INSERT YOUR HOST FOLDER>:/root/Dropbox 

yo yo yo
