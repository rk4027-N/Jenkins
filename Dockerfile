# Build Stage
FROM maven:3.8.7-eclipse-temurin-11 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Runtime Stage
FROM openjdk:11
WORKDIR /app
COPY --from=builder /app/target/my-app-1.0-SNAPSHOT.jar my-app.jar
CMD ["java", "-jar", "my-app.jar"]
