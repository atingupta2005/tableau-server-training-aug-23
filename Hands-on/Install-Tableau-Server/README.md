# Install Tableau Server
- Visit: https://www.tableau.com/support/releases/server/2023.1.4

```
sudo apt-get update -y
sudo apt-get -y install gdebi-core
wget https://downloads.tableau.com/esdalt/2023.1.4/tableau-server-2023-1-4_amd64.deb
sudo gdebi -n tableau-server-2023-1-4_amd64.deb
```

```
sudo /opt/tableau/tableau_server/packages/scripts.20231.23.0711.1149/initialize-tsm --accepteula -f
```

```
curl https://localhost:8850
```


