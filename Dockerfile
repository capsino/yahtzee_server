FROM maven:3.3.9-jdk-8-alpine
MAINTAINER Jon Jagger <jon@jaggersoft.com>

ARG work_dir=/usr/src/app
WORKDIR ${work_dir}

# Prepare by downloading dependencies
COPY pom.xml ${work_dir}/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Add source (includes tests), compile, run tests, package into jar
COPY . ${work_dir}
RUN ["mvn", "package"]

EXPOSE 4567
CMD [ "java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]
