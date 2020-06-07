# Sezzle Magento1 Gateway Frontend

## Start
Use `docker-compose up -d` to start the Magento1 Store.

## Install Magento 1
You can configure the Magento1 version to be installed in docker.env

```bash
docker exec -it magento1 install
```

Sezzle plugin directory is mounted to the container. please refer to volumes in docker-compose.yml. installation script also creates a test user 

Once the installation is complete [magento1 admin page](http://localhost/admin). Login using the admin username and password configured on docker.env

## Cleanup
```bash
docker-compose down --rmi local -v --remove-orphans
```