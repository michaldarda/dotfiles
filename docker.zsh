alias dr='sudo docker run'
alias ds='sudo docker stop'
alias drmf='sudo docker rm -f'
alias dexec'sudo docker exec -it'

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

alias mysql55='docker stop mysql56 && docker start mysql55'
alias mysql56='docker stop mysql55 && docker start mysql56'