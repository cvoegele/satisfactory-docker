FROM --platform=amd64 steamcmd/steamcmd:latest

RUN useradd -ms /bin/bash factory-worker

RUN steamcmd +login anonymous +force_install_dir /home/factory-worker/satisfactory-server +app_update 1690800 +quit 

USER factory-worker

ENTRYPOINT [ "/bin/bash" , "-c" , "/home/factory-worker/satisfactory-server/FactoryServer.sh" ]