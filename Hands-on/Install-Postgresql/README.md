# Setup Postgres Server

```
sudo apt update
sudo apt install postgresql postgresql-contrib postgresql-client
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service
```

```
sudo -i -u postgres
psql
```

```
ALTER USER postgres PASSWORD 'mynewpassword';
\q
```

## Create new user for Postgres Server
```
sudo -u postgres createuser --interactive
sudo -u postgres createdb sammy
sudo adduser sammy
```

## Install pgadmin4
```
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
```

```
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```

```
sudo apt install pgadmin4
```


## Open URL:
```
http://localhost/pgadmin4
```