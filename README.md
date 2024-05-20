<h1 align="center">Windows Drupal Development (WDD)</h1>
<p align="center">An all inclusive solution for Drupal development on windows. </p>

<p align='center'>Technologies</p>
<p align='center'>
  <img src="https://img.shields.io/badge/-Drupal-0678BE?logo=drupal&logoColor=ffffff&style=for-the-badge&labelColor=0678BE" />
  <img src="https://img.shields.io/badge/-MySql-4479A1?logo=mysql&logoColor=ffffff&style=for-the-badge&labelColor=4479A1" />
  <img src="https://img.shields.io/badge/-MySql-777BB4?logo=php&logoColor=ffffff&style=for-the-badge&labelColor=777BB4" />
  <img src="https://img.shields.io/badge/-Docker-2496ED?logo=docker&logoColor=ffffff&style=for-the-badge&labelColor=496ED" />
</p>


<h1 align="center"> ⚠️ ---- Archived ---- ⚠️ </h1>

<p align="center"> This project was orginally created to establish a standared way of building drupal environments on Windows using Docker. However I have discoved a technology <a href="https://lando.dev/">Lando</a> to be a more compelete project that I have used both professionally and personally. Lando provides many features that I would nevery have time to implement. </p>

# Introduction

Getting Drupal set up on windows can be a daunting and a barrier to learning Drupal. WDD aims to simplify the process to get developers up and running quickly.

# Pre Installation

## Docker Desktop

Follow the installation instruction to setup and install Docker Desktop.

[Docker - Install Docker Desktop on Windows](https://docs.docker.com/desktop/install/windows-install/)

## Windows Subsystem Linux (WSL2)

Follow the installation instruction to setup and install WLS.

[Windows Subsystem Linux (WSL2) - Install Linux on Window with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)

## Visual Studio Code

Follow the installation instruction to setup and install Visual Studio code

**\*NOTE:** Install VS Code on the windows side, ensuring you click `Add to PATH`.\*

[Visual Studio Code - Download for Windows](https://code.visualstudio.com/)

[Visual Studio Code - Developing in WSL](https://code.visualstudio.com/docs/remote/wsl)

### Recommended VS Code Extensions:

- [WSL - Microsoft](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)

## Windows Terminal (Optional)

You can download Windows Terminal through the Microsoft Store.

[Microsoft Store - Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701)

# Installation

1\) Open a terminal and start WSL

You should be opened up in your user home directory.

`/home/{user_name}`

2\) Clone the repository

3\) Check out the branch of the corresponding Drupal stack.

| Drupal Version | Branch     | Checkout command            |
| -------------- | ---------- | --------------------------- |
| v10            | drupal-v10 | `$ git checkout drupal-v10` |
| v9             | drupal-v9  | `$ git checkout drupal-v9`  |
| v8             | drupal-v8  | `$ git checkout drupal-v8`  |

4\) Update `.env` file

Before being up your Drupal Docker stack.

1. Copy the `default.env` to `.env`
2. Fill out the each configurations.

_\*see [environment variables]() for addition details._

5\) Bring up Docker Stack

Run the following command to bring up your docker stack

`$ docker compose up -d`

6\) Copy the `default.settings.php` to `default.settings.php`

`$ sudo cp drupal/web/sites/default/default.settings.php drupal/web/sites/default/settings.php`

7\) Change Drupal Directory Permissions

`$ sudo chmod -R 777 drupal`

_\* should only be used for development environment to prevent issues with permissions._

8\) Access Applications

- Drupal - [http://localhost:8080/](http://localhost:8080/)
- PHP MyAdmin - [http://localhost:8090/](http://localhost:8090/)
- MySQL - Accessible via localhost:3306

## Drupal installation

In step 4 *Set up database* of the Drupal site configuration, you will need to change the host of the database from *localhost* to *mysql*

# Folder Structure

Once the Drupal Docker stack is running you will have the following ending directory.

```
.
├── drupal            # Drupal mounted volume directory containing Drupal core.
├── mysql             # MySQL mounted volume directory containing MySQL database.

```

# Environment Variables

[TBD]

# Repo Branches

```
├── main                              # Minimal project files that can be applied to each drupal stack - not development ready
│   ├── v10       (drupal-v10)        # Drupal 10 development stack - ready for development
│   │   ├── dev   (drupal-v10-dev)    # Drupal 10 stack development
│
│   ├── v9        (drupal-v9)         # Drupal 9 development stack files - ready for development
│
│   ├── v8        (drupal-v8)         # Drupal 8 development stack files - ready for development
```
