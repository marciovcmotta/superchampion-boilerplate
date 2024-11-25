# SuperChampion Boilerplate

## Description
SuperChampion Boilerplate is a simple yet powerful backend solution designed for managing football-related data across various European leagues. Built with Node.js and Express, and leveraging TypeScript and TypeORM for robust, scalable applications, this boilerplate integrates MySQL for data persistence and Docker for easy deployment.

## Features
- **Express**: Fast, unopinionated, minimalist web framework.
- **TypeScript**: Adds static types to JavaScript for more reliable code.
- **TypeORM**: ORM for TypeScript and JavaScript (ES7, ES6, ES5) supporting MySQL.
- **Docker**: Supports containerization to streamline development and deployment.
- **Migrations**: Manage database changes and version control.
- **CORS**: Cross-Origin Resource Sharing enabled.

## Installation
1. **Clone the repository**:
   ```bash
   git clone https://github.com/marciovcmotta/superchampion-boilerplate
   cd superchampion-boilerplate
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Set up environment variables**:
   - Copy `.env.example` to `.env` and update the values according to your local environment.

4. **Run Docker containers**:
   ```bash
   docker-compose up
   ```

5. **Run migrations** (Ensure the database service is up and running):
   ```bash
   npm run typeorm migration:run
   ```

## Scripts
- **`npm run start:dev`**: Runs the server using `tsx` directly from TypeScript files.
- **`npm run start:watch`**: Watches for file changes and restarts the server.
- **`npm run dist`**: Builds the application using `tsup`.
- **`npm run start:dist`**: Runs the built JavaScript code from the `dist` directory.

## Documentation
Documentation related to the API endpoints and data models can be found in the `docs` directory.

## Contributing
Contributions to the SuperChampion Boilerplate are always welcome, whether it be improvements to the documentation, bug fixes, new features, or other enhancements!

## License
This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.