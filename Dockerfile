# Используйте официальный образ OpenJDK
FROM openjdk:17-jdk-alpine

# Установите рабочую директорию
WORKDIR /app

# Копируйте JAR-файл в контейнер
COPY target/learn-jenkins-app-1.0-SNAPSHOT.jar app.jar

# Укажите команду для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
