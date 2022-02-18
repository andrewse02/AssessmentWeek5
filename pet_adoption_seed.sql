CREATE TABLE animals(
  animal_id SERIAL PRIMARY KEY,
  type_id INTEGER NOT NULL REFERENCES animal_types(type_id),
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  adoption_status VARCHAR(20) NOT NULL,
  date_received DATE NOT NULL
);

CREATE TABLE animal_types(
  type_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE transactions(
  transaction_id SERAL PRIMARY KEY,
  animal_id INTEGER NOT NULL REFERENCES animals(animal_id),
  total FLOAT NOT NULL,
  employee_id INTEGER NOT NULL REFERENCES employees(employee_id),
  date DATE NOT NULL
);

CREATE TABLE employees(
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  position_id INTEGER NOT NULL REFERENCES positions(position_id),
  hired DATE NOT NULL
);

CREATE TABLE positions(
  position_id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);