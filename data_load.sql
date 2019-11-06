Create table Ship(
    id int not null auto_increment,
    survived int not null ,
    pclass int not null,
    name varchar(255)not null,
    sex char (10) not null,
    age int ,
    sibsp int not null,
    parch int,
    ticket varchar(255),
    fare float(5),
    cabin varchar(10),
    embarked char(1) not null ,
    primary key ( id)
    );



# There was an error coming. a MYSQL Bug. LOAD DATA INFILE not working
# Following things were done to resolve the bug. We have to set 'local_infile=1' for our db

C:\Program Files\MySQL\MYSQL Server8.0\bin>mysql -u root -p titanic
C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql --local-infile=1 -u root -p titanic
LOAD DATA LOCAL INFILE 'C://Users//Sumedha//Desktop//Titanic_Kaggle_Data_Analysis//train.csv' INTO TABLE Ship FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS (id, survived, pclass, name, sex, age, sibsp, parch, ticket, fare, cabin, embarked);
