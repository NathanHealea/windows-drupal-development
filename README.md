<h1 align="center">Windows Drupal Development (WDD)</h1>
<p align="center">An all inclusive solution for Drupal development on windows. </p>

<p align='center'>Technologies</p>
<p align='center'>
  <img src="https://img.shields.io/badge/-Drupal-0678BE?logo=drupal&logoColor=ffffff&style=for-the-badge&labelColor=0678BE" />
  <img src="https://img.shields.io/badge/-MySql-4479A1?logo=mysql&logoColor=ffffff&style=for-the-badge&labelColor=4479A1" />
  <img src="https://img.shields.io/badge/-MySql-777BB4?logo=php&logoColor=ffffff&style=for-the-badge&labelColor=777BB4" />
  <img src="https://img.shields.io/badge/-Docker-2496ED?logo=docker&logoColor=ffffff&style=for-the-badge&labelColor=496ED" />
</p>

# Introduction

Getting Drupal set up on windows can be a daunting and a barrier to learning Drupal. WDD aims to simplify the process to get developers up and running quickly.

# Pre Installation

## Docker Desktop

Follow the installation instruction to setup and install Docker Desktop.

[Docker - Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/)
[Windows Subsystem Linux (WSL2) - Install Linux on Window with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)

# Installation

1\) Open a terminal and start WSL

You should be opened up in your user home directory.

`/home/{user_name}`

2\) Clone the repository

3\) Check out the branch of the corresponding Drupal stack.

| Drupal Version | Branch    | Checkout command            |
| -------------- | --------- | --------------------------- |
| v10            | drupal/10 | `$ git checkout drupal/v10` |
| v9             | drupal/9  | `$ git checkout drupal/v9`  |
| v8             | drupal/8  | `$ git checkout drupal/v8`  |

4\) Update `.env` file

Before being up your Drupal Docker stack.

1. Copy the `default.env` to `.env`
2. Fill out the each configurations.

_\*see [environment variables]() for addition details._

4\) Bring up Docker Stack

Run the following command to bring up your docker stack

`$ docker compose up -d`

5\) Copy the `default.settings.php` to `default.settings.php`

`$ sudo cp drupal/web/sites/default/default.settings.php drupal/web/sites/default/settings.php`

6\) Change Drupal Directory Permissions

`$ sudo chmod -R 777 drupal`

_\* should only be used for development environment to prevent issues with permissions._

7\) Access Applications

- Drupal - [http://localhost:8080/](http://localhost:8080/)
- PHP MyAdmin - [http://localhost:8090/](http://localhost:8090/)
- MySQL - Accessible via localhost:3306

## Setting Up MySQL

Before setting up the Drupal installation, you will need to grant remote access permissions to the admin user.

1\) Open an interactive terminal in to the `{PROJECT_NAME}-mysql` Docker container.

`$ docker exec -it {PROJECT_NAME}-mysql /bin/bash`

2\) Login to mysql using the `root` user credentials

`$ mysql -u root -p `

Use the `MYSQL_ROOT_PASSWORD` password defined in the `.env`.

3\) Run the following command to grand remote access to the `{MYSQL_USER}`

8\) Setup your Drupal instance.

Once you have completed bring up the Docker stack, permission changes, and copy the `settings.php`, open your drupal site and finish the installation.

# Folder Structure

Once the Drupal Docker stack is running you will have the following ending directory.

```
.
├── drupal            # Drupal mounted volume directory containing Drupal core.
├── mysql             # MySQL mounted volume directory containing MySQL database.

```

# Environment Variables

# Repo Branches

```
├── main              # Minimal project files that can be applied to each drupal stack - not development ready
│   ├── v10           # Drupal 10 development stack - ready for development
│   │   ├── dev       # Drupal 10 stack development
│
│   ├── v9            # Drupal 9 development stack files - ready for development
│
│   ├── v8            # Drupal 8 development stack files - ready for development
```
