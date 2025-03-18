# Используем официальный образ Java
FROM openjdk:17-jdk-slim

# Устанавливаем рабочий каталог в контейнере
WORKDIR /app

# Копируем сборку из target в рабочий каталог
COPY target/learn-jenkins-app-1.0-SNAPSHOT.jar app.jar

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]
