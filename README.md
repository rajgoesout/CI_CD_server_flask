# CI/CD Server Flask

![Build & Run](https://github.com/rajdeepbharati/CI_CD_server_flask/workflows/Build%20&%20Run/badge.svg)

## Getting Started

Fork this repo to your GitHub account, then clone it.

```sh
git clone https://github.com/your-github-username/CI_CD_server_flask
```

cd into the project directory, set up environment variables and bootstrap the project:

```sh
cd CI_CD_server_flask
export MY_SECRET_KEY='something-really-secret'
export FLASK_APP=autoapp.py
export FLASK_DEBUG=1
python3 -m venv venv
source venv/bin/activate
pip install -r requirements/dev.txt
```

Run the following commands to create your app's database tables and perform the initial migration:

```sh
flask db init
flask db migrate
flask db upgrade
```

Run the tests locally:

```sh
flask test
```

Run server

```sh
flask run
```

## Deployment

In your production environment, make sure the `FLASK_DEBUG` environment variable is unset or is set to `0`, so that `ProdConfig` is used, and set `DATABASE_URL` which is your postgresql URI for example `postgresql://localhost/example` (this is set by default in heroku).

## Prerequisites

- Python (>=3.7)
- git
- heroku account
- Docker

## Credits

This repository is a modification of gothinkster's flask-realworld-example-app:
https://github.com/gothinkster/flask-realworld-example-app
