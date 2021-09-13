### About This Initial code

The initial setup for your project. Please follow these instructions:
* Go to this url https://github.com/Yosolita1978/week10PairProgramming and click on the FORK button. You will see something like this ![Screenshoot](https://github.com/Yosolita1978/screenshoots/blob/main/week10/WhatsApp%20Image%202021-09-13%20at%202.36.49%20PM.jpeg?raw=true)
* Make sure that the next steps are running in your fork repo. You will see your username at the beginning of your URL (not mine)
![Screenshoot](https://github.com/Yosolita1978/screenshoots/blob/main/week10/WhatsApp%20Image%202021-09-13%20at%202.36.49%20PM%20(1).jpeg?raw=true)
* From YOUR FORK repo, copy the URL to do a git clone. It should be something like https://github.com/YOURUSERNAME/week10PairProgramming
* Go to your terminal and do git clone YOUR FORK URL (https://github.com/YOURUSERNAME/week10PairProgramming)
* You're working now in your own repo. CD in the folder and run the two servers. One inside the example-postgres for the server and one inside the example-react folder for the react app. Both of them will run with npm start


## For creating your DB (you only need to do this once)
* In your terminal, run the command `psql -d postgres -U postgres` It will ask you for your password for your postgres user
* Once you are inside your psql command line, run this commands `CREATE ROLE my_test_user WITH LOGIN PASSWORD 'root"
* `ALTER ROLE my_test_user CREATEDB;`
* `\q`
* `psql -d postgres -U my_test_user` It will ask you for your password for your my_test_user(root)
* At this moment you should have something like this in your terminal ![Screenshoot](https://github.com/Yosolita1978/screenshoots/blob/main/week10/Screen%20Shot%202021-09-13%20at%203.11.44%20PM.png?raw=true)
* Once inside your my_test_user command line, you can create your DB with the command `CREATE DATABASE test_db;`
* Then you need to go inside your test_db to create your table: `\c test_db`

* At this point, you should see this message ![Screenshoot](https://github.com/Yosolita1978/screenshoots/blob/main/week10/Screen%20Shot%202021-09-13%20at%203.15.33%20PM.png?raw=true)

* Inside your DB you can create your table: `CREATE TABLE merchants( id SERIAL PRIMARY KEY, name VARCHAR(30), email VARCHAR(30) );`
* and add some values: `INSERT INTO merchants (name, email) VALUES ('john', 'john@mail.com');`
* Make sure that you have at least one row in your table merchants before running your postgres server
* If you want to see the .sql file that I did as an example, there is a file db.sql in your folder. Open that file in your VSCode


### Things to do:
* You can test and see how the data collected from your React application is recorded into PostgreSQL. I'll leave you the implementation of the UPDATE query as an exercise.

## About this project
This code example was made following this tutorial {https://blog.logrocket.com/getting-started-with-postgres-in-your-react-app/} 