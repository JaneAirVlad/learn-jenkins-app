# Используем официальный образ OpenJDK в качестве базового
FROM openjdk:11-jre-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем собранный JAR файл в контейнер
COPY build/libs/my-app.jar my-app.jar

# Указываем команду для запуска приложения
CMD ["java", "-jar", "my-app.jar"]
