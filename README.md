## Terraform Project!
## README File

[![N|Solid](https://www.datocms-assets.com/58478/1640019487-og-image.png)](https://www.linkedin.com/in/guy-ashkenazi-47a576236/)

- Clone the Repository
- Install and configure Terraform with AZURE provider
- Terraform init, plan and apply with your .tfvars file
- ✨See The Magic Yourself✨

## Features

> In this Terraform projects I implemented:
> - Terraform
> - Bash
> - Azure
> - Pyhon
> - Git
> - Flask
> - PostgreSQL

## Tech

I used a number of sources in this projects to work properly:


- [Terraform-Azure] - Build, change, and destroy Azure infrastructure using Terraform.

- [Language-Documentation] - Use the Terraform configuration language to describe the infrastructure that Terraform manages.

- [PostgreSQL-Flask] - How To Use a PostgreSQL Database in a Flask Application

- [PostgreSQL] - How To Install PostgreSQL on Ubuntu 22.04

- [Flask] - How To Install Flask




## Installation

Terraform project requires [Terraform](https://developer.hashicorp.com/terraform/downloads), [AZURE subscriptions](https://azure.microsoft.com/en-us/free) and [AZURE CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) to run.

Install the dependencies and start the server.


To connect Terraform to your azure subsciption, run the following commands: 
```sh
az login --tent <your azure subsciption>
```

Follow the provided links for further configuration.


## Flask_App Directory:

<u> **init_db.py:** </u>

A Python script responsible for initializing and setting up the database. This might include creating tables, setting up indices, and populating initial data.

<u> **main.py:** </u>

The primary Flask web application. This script runs the web server, defines routes, handles database interactions, and serves the application's webpages.

## Shell_Scripts Directory:

<u> **db_script.bash:** </u>


Bash script designed for the setup and configuration of the database server. This can include installing necessary packages, adjusting configurations, or invoking other scripts like init_db.py.

<u> **export_script.bash:** </u>

Bash script that exports necessary environment variables. These environment variables might include database credentials, port numbers, or other configuration values required by the Flask application or database.

<u> **web_script.bash:** </u>

Bash script for setting up and configuring the web server environment. This can include steps like installing required packages, setting up virtual environments, or starting the Flask app defined in main.py.

## Terraform Directory:

<u> **main.tf:** </u>

The primary Terraform configuration file. It defines and provides data to the Terraform modules used in the project. This is where most of the infrastructure-as-code magic happens.

<u> **output.tf:** </u>

Contains definitions of values to output after terraform apply is run. These values might include IP addresses, URLs, or other useful data.

<u> **providers.tf:** </u>

Specifies and configures the providers used in the Terraform configuration. This is where you define the cloud providers (e.g., AWS, Azure) and any required settings.

<u> **variables.tf:** </u>

Contains variable definitions for Terraform. Variables are often used to generalize configurations, making it easier to reuse or adapt the code for different environments or purposes.

## Terraform Project!

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [PostgreSQL-Flask]: <https://www.digitalocean.com/community/tutorials/how-to-use-a-postgresql-database-in-a-flask-application>
   [Terraform-Azure]: <https://developer.hashicorp.com/terraform/tutorials/azure-get-started>
   [Language-Documentation]: <https://developer.hashicorp.com/terraform/language>
   [PostgreSQL]: <https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-22-04-quickstart>
   [Flask]: <https://phoenixnap.com/kb/install-flask>

