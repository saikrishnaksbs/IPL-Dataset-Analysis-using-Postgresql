Install Postgre SQL on your machine.

    sudo apt install postgresql postgresql-contrib

    sudo systemctl start postgresql.service

Switch over to the Postgres account on your server by running the following command:

    sudo -i -u postgres
    psql

Create a New Database

    createdb sammy

Later run the creatematches.sql, createdeliveries.sql files, followed by any other files.