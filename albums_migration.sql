USE codeup_test_db;
CREATE TABLE albums (
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(150) NOT NULL,
    name         VARCHAR(150) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales        DECIMAL(6, 2) NOT NULL,
    genre        VARCHAR (150) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE contacts (
  id         INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name       VARCHAR(100) NOT NULL,
  number     INT UNSIGNED NOT NULL,
  email      VARCHAR(150) NOT NULL,
  created_at DATETIME     NOT NULL,
  updated_at DATETIME     NOT NULL,
  PRIMARY KEY (id)
);
CREATE TABLE pizza_order (
  name          VARCHAR(100) NOT NULL,
  phone_number  INT UNSIGNED NOT NULL,
  email         VARCHAR(150) NOT NULL,
  address       TEXT NOT NULL,
  pizza_size    INT UNSIGNED NOT NULL,
  total_cost    DECIMAL(5, 2) NOT NULL,
  description   TEXT NOT NULL,
  isDelivered   TINYINT,
  created_at    DATETIME NOT NULL,
  updated_at    DATETIME NOT NULL,
  PRIMARY KEY (name)
);