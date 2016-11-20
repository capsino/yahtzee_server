FROM java:8

# Install maven
RUN apt-get update
RUN apt-get install -y maven

ARG work_dir=/usr/src/app
WORKDIR ${work_dir}

# Prepare by downloading dependencies
ADD pom.xml ${work_dir}/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Add source (includes tests), compile, run tests, package into jar
COPY . ${work_dir}
RUN ["mvn", "package"]

EXPOSE 4567
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar", "target/sparkexample-jar-with-dependencies.jar"]