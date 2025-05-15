FROM openjdk:17-jdk
WORKDIR /app
RUN apt update && apt install -y curl
RUN curl -o server.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/191/downloads/paper-1.21.1-191.jar
RUN echo "eula=true" > eula.txt
EXPOSE 25565
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
