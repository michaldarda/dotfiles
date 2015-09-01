function cleandocker() {
  docker rm `docker ps --no-trunc -aq`
}

function docker-mylogs() {
  docker exec -it $1 sh -c 'tail -f /var/log/mysql/mysql.log'
}

function docker-myrun() {
  docker run --name $2 -e MYSQL_ROOT_PASSWORD=password -p 3306:3306 -d $1 mysqld --general-log --general-log-file=/var/log/mysql/mysql.log
}

function docker-exec() {
  docker exec -it $1 /bin/bash
}

function docker-my() {
  docker exec -it $1 bash -c 'mysql -ppassword'
}
