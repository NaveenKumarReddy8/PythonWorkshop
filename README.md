# PythonWorkshop
Hello Pythoneer! Want to learn Python 🐍 with having fun? You have come to the right repository ♥️

# Using Docker to dive through this Repository

Our docker image is bundled with all the required to run this repository.

* Pull the docker image
```Shell
docker pull naveen8/pythonworkshop:latest
```

* Clone our repository
```Shell
git clone https://github.com/NaveenKumarReddy8/PythonWorkshop.git
```

* Run our docker image mounting our repo and port forwarding the container port 8888 to host port.

```Shell
docker container run -p 8888:8888/tcp -v <cloned_repo_destination>:/pythonworkshop naveen8/pythonworkshp:latest 
```

Open the localhost url being shown in the logs which contains the token for authentication.



Made with Love ♥️
