# RouteMatch

RouteMatch is the main application repository for the RouteMatch micro-services.

## Requirements
* docker
* docker-compose
* node
* npm

## quickstart

```bash
./update_submodules.sh master # fetches submodules

./build.sh # installs npm modules, builds images

docker-compose up # starts up services in docker containers
```
## Smoke Test

Open browser and go to http://localhost:8082/swagger/#swagger.json
