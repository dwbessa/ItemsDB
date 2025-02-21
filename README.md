# Spring Boot JSP CRUD Application

A simple CRUD (Create, Read, Update, Delete) application built with Spring Boot, JSP, and H2 Database. This project demonstrates basic operations on items with properties like name, description, and price.

## Technologies Used

- Java 17
- Spring Boot 3.2.0
- Spring MVC
- Spring Data JPA
- JSP (JavaServer Pages)
- H2 Database
- Maven
- Lombok

## Features

- Create new items
- Read/List all items
- Update existing items
- Delete items
- In-memory H2 database
- Simple and responsive UI

## Prerequisites

Before running this application, make sure you have the following installed:

- Java JDK 17 or later
- Maven 3.6 or later
- Your favorite IDE (IntelliJ IDEA, Eclipse, or VS Code)

## How to Run

1. Clone the repository:
   ```bash
   git clone git@github.com:dwbessa/jsp_crud.git
   cd jsp_crud
   ```

2. Build the project:
   ```bash
   mvn clean install
   ```

3. Run the application:
   ```bash
   mvn spring-boot:run
   ```

4. Access the application:
   - Open your web browser and navigate to `http://localhost:8080`
   - The application will redirect you to the items page at `http://localhost:8080/items`

5. Access H2 Database Console (optional):
   - Navigate to `http://localhost:8080/h2-console`
   - JDBC URL: `jdbc:h2:mem:testdb`
   - Username: `sa`
   - Password: (leave empty)

## Application Properties

Key application properties (in `src/main/resources/application.properties`):
- Server port: 8080
- H2 Database configuration
- JSP view resolver configuration
- JPA configuration
- Logging levels

## Contributing

Feel free to fork this project and submit pull requests for improvements.

## Issues

If you find any issues or have suggestions, please create an issue in the repository.

## License

This project is open source and available under the [MIT License](LICENSE).
