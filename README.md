# PHP-MySQL-Docker-Template by Chen Lay

A Docker template for PHP development, featuring PHP 8.0, MySQL 8.0, and PHPMyAdmin - ready to go!

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-repo.git
    cd your-repo
    ```

2. Build and run the Docker containers:

    ```bash
    docker-compose up --build -d
    ```

3. Access your PHP application at [http://localhost:your-port](http://localhost:your-port)
4. Access PHPMyAdmin at [http://localhost:your-phpmyadmin-port](http://localhost:your-phpmyadmin-port)

## Configuration

Explain any configuration options or environment variables here.

## Development Setup

### PHPMyAdmin Port

By default, PHPMyAdmin is running on port 8080. You can access it at [http://localhost:8080](http://localhost:8080).

### Useful Commands

- To stop and remove the containers:

    ```bash
    docker-compose down
    ```

- To view container logs:

    ```bash
    docker-compose logs
    ```

## Contributing

If you'd like to contribute, please fork the repository and submit a pull request.

## License

This project is licensed under the [Chen Lay] License - see the [LICENSE.md](LICENSE.md) file for details.
