.. image:: image.png

.. ![badge](https://action-badges.now.sh/JasonEtco/example-repo?action=test)

.. image:: https://action-badges.now.sh/rajdeepbharati/CI_CD_server_flask

Quickstart
----------

.. CircleCI build:

.. .. image:: https://circleci.com/gh/gothinkster/flask-realworld-example-app.png


First, set your app's secret key as an environment variable. For example,
add the following to ``.bashrc`` or ``.bash_profile``.

.. code-block:: bash

    export MY_SECRET_KEY='something-really-secret'

Before running shell commands, set the ``FLASK_APP`` and ``FLASK_DEBUG``
environment variables ::

    export FLASK_APP=/path/to/autoapp.py
    export FLASK_DEBUG=1

Then run the following commands to bootstrap your environment ::

    git clone https://github.com/gothinkster/flask-realworld-example-app.git
    cd flask-realworld-example-app
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements/dev.txt


Run the following commands to create your app's
database tables and perform the initial migration ::

    flask db init
    flask db migrate
    flask db upgrade

To run the web application use::

    flask run --with-threads


Deployment
----------

In your production environment, make sure the ``FLASK_DEBUG`` environment
variable is unset or is set to ``0``, so that ``ProdConfig`` is used, and
set ``DATABASE_URL`` which is your postgresql URI for example
``postgresql://localhost/example`` (this is set by default in heroku).


Shell
-----

To open the interactive shell, run ::

    flask shell

By default, you will have access to the flask ``app`` and models.


Running Tests
-------------

To run all tests, run ::

    flask test


Migrations
----------

Whenever a database migration needs to be made. Run the following commands ::

    flask db migrate

This will generate a new migration script. Then run ::

    flask db upgrade

To apply the migration.

For a full migration command reference, run ``flask db --help``.


Credits
-------

This repository is a modification of gothinkster's flask-realworld-example-app:
https://github.com/gothinkster/flask-realworld-example-app
