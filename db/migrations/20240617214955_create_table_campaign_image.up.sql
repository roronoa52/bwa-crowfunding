CREATE TABLE campaign_images (
  id SERIAL PRIMARY KEY,
  campaign_id INT DEFAULT NULL,
  file_name VARCHAR(255) DEFAULT NULL,
  is_primary SMALLINT DEFAULT NULL,
  created_at TIMESTAMP DEFAULT NULL,
  updated_at TIMESTAMP DEFAULT NULL
);