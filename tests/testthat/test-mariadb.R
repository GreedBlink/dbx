context("mariadb")

skip_on_cran()

db <- dbxConnect(adapter="rmariadb", dbname="dbx_test")

dbExecute(db, "DROP TABLE IF EXISTS events")
dbExecute(db, "CREATE TABLE events (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, city VARCHAR(255), counter INT, speed FLOAT, distance DECIMAL(5, 2), created_on DATE, updated_at DATETIME(6), deleted_at TIMESTAMP(6) NULL DEFAULT NULL, open_time TIME, properties TEXT, active BOOLEAN, image BLOB)")

runTests(db)
