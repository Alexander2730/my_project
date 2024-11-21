CREATE TABLE test_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10) NOT NULL CHECK (CHAR_LENGTH(name) BETWEEN 4 AND 10),
    surname VARCHAR(255) NOT NULL,
    city VARCHAR(255),
    age INT NOT NULL CHECK (age >= 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('John', 'Doe', 'New York', 25),
('Jane', 'Smith', 'Los Angeles', 30),
('Mike', 'Brown', 'Chicago', 40),
('Emily', 'Davis', 'Houston', 22),
('Anna', 'Wilson', 'Phoenix', 18),
('Tom', 'Johnson', 'Philadelphia', 35),
('Sam', 'Jones', 'San Antonio', 50),
('Kate', 'Garcia', 'San Diego', 27),
('Leo', 'Martinez', 'Dallas', 45),
('Zoe', 'Hernandez', 'San Jose', 29),
('Max', 'Lopez', 'Austin', 33),
('Ray', 'Gonzalez', 'San Francisco', 12),
('Amy', 'Anderson', 'Seattle', 21),
('Ben', 'Thomas', 'Las Vegas', 55),
('Kay', 'Taylor', 'Orlando', 20),
('Ann', 'Moore', 'Minneapolis', 28),
('Lia', 'Jackson', 'Tucson', 37),
('Jim', 'Martin', 'Atlanta', 47),
('Ivy', 'Lee', 'Miami', 31),
('Eli', 'White', 'Columbus', 12);

('Ada', 'Lee', 'Seattle', 29),
('Rex', 'Walker', 'Denver', 35),
('Nia', 'Hall', 'Washington', 18),
('Kay', 'Allen', 'Boston', 23);
