CREATE TABLE campaigns (
  id SERIAL PRIMARY KEY,
  user_id INT DEFAULT NULL,
  name VARCHAR(255) DEFAULT NULL,
  short_description VARCHAR(255) DEFAULT NULL,
  description TEXT,
  perks TEXT,
  backer_count INT DEFAULT NULL,
  goal_amount INT DEFAULT NULL,
  current_amount INT DEFAULT NULL,
  slug VARCHAR(255) DEFAULT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL
);