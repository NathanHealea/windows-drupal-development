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

# Installation

1\) Clone the repository

2\) Check out the branch of the corresponding Drupal stack.

| Drupal Version | Branch    | Checkout command            |
| -------------- | --------- | --------------------------- |
| v10            | drupal/10 | `$ git checkout drupal/v10` |
| v9             | drupal/9  | `$ git checkout drupal/v9`  |
| v8             | drupal/8  | `$ git checkout drupal/v8`  |

3\) Update `.env` files

Before being up your Drupal Docker stack.

1. Copy the `default.env` to `.env`
2. Fill out the each configurations.

_\*see [environment variables]() for addition details._

4\) Bring up Docker Stack
Run the following command to bring up your docker stack

`$ docker compose up`

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
├── main              # Minimal project files that can be applied to each drupal stack
│   ├── drupal/v10    # Drupal 10 development stack files
│   ├── drupal/v9     # Drupal 9 development stack files
│   ├── drupal/8      # Drupal 8 development stack files
```