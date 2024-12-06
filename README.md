<div align="center">
 <h1> Homelab </h1>
</div>

<div align="center">

![GitHub last commit](https://img.shields.io/github/last-commit/owlsly94/homelab?style=for-the-badge&color=a6e3a1&logoColor=D9E0EE&labelColor=292324)
![GitHub Repo stars](https://img.shields.io/github/stars/owlsly94/homelab?style=for-the-badge&color=74c7ec&logoColor=D9E0EE&labelColor=292324&logo=andela)
![GitHub repo size](https://img.shields.io/github/repo-size/owlsly94/homelab?style=for-the-badge&color=cba6f7&logoColor=D9E0EE&labelColor=292324&logo=protondrive)

</div>
<hr />
<div align="center">
<p>
   Before anything, you need to create a `docker` directory in your home directory. <br/>
   The compose file will automatically install everything. <br/>
</p>

</div>

## Usage
1. Clone the repo
```
git clone https://github.com/owlsly94/homelab.git
cd homelab
```
2. Make the directory `docker` in your home directory and access into it
```
mkdir -p ~/docker
```
3. Move or copy the `docker-compose.yml` file in the docker directory
```
cp docker-compose.yml ~/docker
cd ~/docker
```
4. Make sure you have installed docker on your system and install apps using the command
```
sudo docker compose up -d
```
5. When you set up everything, make sure that your apps have the right premissions. If not, used the command:
```
docker exec -it <container_name_or_id> /bin/bash
```
If you have any premission problems:
If the filebrowser has problems, root into the docker container and change premission of the filebrowser.db to 1000:1000
```
sudo chown -R abc:users <folder name>
```
For crafty, the first time login creds can be found in crafty/config/default-creds.txt - just cat the file


