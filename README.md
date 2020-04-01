mvn clean install

mvn verify

mvn dockerfile:push

docker run -p 8080:8080 --link=rabbit-name-management --env MQ_HOST=rabbit-name-management profemzy/configserver:0.0.1-SNAPSHOT