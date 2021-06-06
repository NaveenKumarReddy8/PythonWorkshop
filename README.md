# PythonWorkshop
Hello Pythoneer! Want to learn Python 🐍 with having fun? You have come to the right repository ♥️

🚀[Homepage](https://naveenkumarreddy8.github.io/PythonWorkshop/)

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

Or using the docker compose to spin up the container 😎 🚀:

cd into the cloned repository directory and use the following command.

```Shell
docker compose up
```

Open the localhost url being shown in the logs which contains the token for authentication.


# Developer setup

* Clone our repository

```Shell
git clone https://github.com/NaveenKumarReddy8/PythonWorkshop.git
```

* Build the Docker image using the Dockerfile.

```Shell
docker image build -t <repository>:<tag> .
```

* Run the docker image just created mounting our repo and port forwarding the container port 8888 to host port.


```Shell
docker container run -p 8888:8888/tcp -v <cloned_repo_destination>:/pythonworkshop naveen8/pythonworkshp:latest 
```

Or using the docker compose to spin up the container 😎 🚀:

cd into the cloned repository directory and use the following command.

```Shell
docker compose up
```


To generate the markdown file of a particular .ipynb notebook:

```Shell

# Single file
jupyter nbconvert --to markdown <ipynb file>

# Multiple files

for f in *.ipynb; do jupyter nbconvert --to markdown $f; done
```


To concat multiple markdown files we use pandoc

```Shell
pandoc -s 1_file.md 2_file.md 3_file.md -o merge.md

# We do use chronological numerical order in our repo, so we can write the above command as:
pandoc -s $(ls -v *.md) -o merge.md
```

To convert the pandoc style markdown file generated to Github Flavoured markdown:

```Shell
pandoc -s merge.md -o github_flavoured_markdown.md --to gfm
```

Made with Love ♥️
