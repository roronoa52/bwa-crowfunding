CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) DEFAULT NULL,
  occupation VARCHAR(255) DEFAULT NULL,
  email VARCHAR(255) DEFAULT NULL,
  password_hash VARCHAR(255) DEFAULT NULL,
  avatar_file_name VARCHAR(255) DEFAULT NULL,
  role VARCHAR(255) DEFAULT NULL,
  token VARCHAR(255) DEFAULT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL
);