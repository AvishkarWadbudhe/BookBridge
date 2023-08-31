# BookBridge: Buy and Sell Old Books Platform

BookBridge is an end-to-end platform designed to connect users who want to sell their old books with potential buyers. The platform enables users to list their books for sale, and interested buyers can browse listings, connect with sellers, and arrange for book delivery based on location. The entire process is facilitated without involving any third parties, providing a seamless experience for both sellers and buyers.

## Key Features

- **User Authentication:** Users can create accounts, log in securely, and manage their profiles.

- **Book Listings:** Sellers can create detailed listings for their old books, including book title, author, condition, price, and location.

- **Search and Filters:** Buyers can search for specific books and apply filters based on location, book category, and condition.

- **Contact Directly:** Sellers and buyers can communicate directly within the platform to discuss book availability, delivery options, and other details.

- **Book Delivery:** Users can arrange for book delivery or meetups based on their preferences and proximity.

## Technologies Used

- **Java:** The primary programming language for developing the backend logic and functionality.

- **JSP (JavaServer Pages) and Servlets:** Used for creating dynamic web pages and handling server-side logic.

- **MySQL:** The database management system to store user profiles, book listings, and communication history.

- **Tomcat:** The web server to deploy and run the Java web application.

- **Maven:** Used for project management, including dependencies and build processes.

## Getting Started

1. Clone the repository: `git clone https://github.com/AvishkarWadbudhe/BookBridge.git`

2. Set up MySQL database: Create a new database and import the SQL script provided in the repository.

3. Configure database connection: Update the database connection details in the `application.properties` file.

4. Build the project: Use Maven to build the project and generate the `.war` file.

5. Deploy the application: Deploy the generated `.war` file on the Tomcat server.

6. Access the application: Open a web browser and navigate to the application URL.

## Project Structure

- `src/main/java`: Contains Java classes, servlets, and business logic.
- `src/main/webapp`: Includes JSP files for rendering dynamic web pages.
- `src/main/resources`: Contains configuration files, including `application.properties`.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
