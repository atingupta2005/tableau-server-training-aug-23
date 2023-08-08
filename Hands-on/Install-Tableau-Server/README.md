# Install Tableau Server
- Visit: https://www.tableau.com/support/releases/server/2023.1.4

```
sudo apt-get update -y
sudo apt-get -y install gdebi-core
wget https://downloads.tableau.com/esdalt/2023.1.4/tableau-server-2023-1-4_amd64.deb
sudo gdebi -n tableau-server-2023-1-4_amd64.deb
```

```
localectl
sudo localectl set-locale LANG=en_US.UTF-8
sudo localedef -c -f UTF-8 -i en_US en_US.UTF-8
export LC_ALL=en_US.UTF-8
```

```
sudo /opt/tableau/tableau_server/packages/scripts.20231.23.0711.1149/initialize-tsm --accepteula -f
```

```
curl https://localhost:8850
```


