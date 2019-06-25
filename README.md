## react + django + postgres

Easiest way to install and run is to use Docker. Make sure you have [Docker](https://hub.docker.com/) and [Docker-Compose](https://docs.docker.com/compose/install/) installed.

### WIP

##### Starting

`git clone https://github.com/marekfs/marekfs-react-django`  
`cd marekfs-react-django`  
`docker-compose run --rm node npm install`  
`docker-compose up`

In your browser, navigate to **http://localhost:8000**.

To stop the containers gracefully, you can run the following in another session:

`docker-compose down`
