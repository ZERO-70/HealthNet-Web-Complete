# HealthNet-Web-Complete

It contains backend, frontend, and database along with ERD design.

## Table of Contents

- [About the Project](#about-the-project)
- [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Directory Structure](#directory-structure)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## About the Project

HealthNet-Web-Complete is a comprehensive web application designed to manage health-related data. It includes backend, frontend, and database components, along with an Entity-Relationship Diagram (ERD) design.

## Built With

- **JavaScript**: 46.8%
- **Java**: 34.7%
- **CSS**: 18%
- **Other**: 0.5%

## Getting Started

To get a local copy up and running, follow these steps.

### Prerequisites

Make sure you have the following software installed:

- [Node.js](https://nodejs.org/)
- [Java](https://www.java.com/)
- [MySQL](https://www.mysql.com/)
- [Maven](https://maven.apache.org/)

### Installation

1. Clone the repo:
   ```sh
   git clone https://github.com/ZERO-70/HealthNet-Web-Complete.git
   ```
2. Navigate to the project directory:
   ```sh
   cd HealthNet-Web-Complete
   ```
3. Install NPM packages for the frontend:
   ```sh
   cd frontend
   npm install
   ```
4. Build and run the backend using Maven:
   ```sh
   cd ../backend
   mvn clean install
   mvn spring-boot:run
   ```
5. Set up the database:
   - Import the ERD design into your MySQL database.

## Directory Structure

Provide a brief overview of your project's directory structure.

```
HealthNet-Web-Complete/
├── backend/
│   ├── src/
│   ├── pom.xml
│   └── ...
├── frontend/
│   ├── src/
│   ├── package.json
│   └── ...
├── database/
│   ├── ERD/
│   └── ...
└── README.md
```

## Usage

The project is quite simple , one important thing is that i have used hosting service like railway.app for my backend , but now the backend is no longer on that server , *make sure to change the API url from that server in the frontend
if you are going to test any feature on your local machine*

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Muhammad Zair - mhammadzair@gmail.com

Project Link: [https://github.com/ZERO-70/HealthNet-Web-Complete](https://github.com/ZERO-70/HealthNet-Web-Complete)
