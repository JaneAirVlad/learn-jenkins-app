# Используем официальный образ OpenJDK в качестве базового
FROM openjdk:11-jre-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем собранный JAR файл в контейнер
COPY target/learn-jenkins-app-1.0-SNAPSHOT.jar my-app.jar

# Указываем команду для запуска приложения
CMD ["java", "-jar", "my-app.jar"]
