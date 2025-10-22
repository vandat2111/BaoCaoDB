CREATE TABLE genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) UNIQUE NOT NULL
);

-- Table: publisher
-- Mô tả: Chứa thông tin nhà phát hành game

CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);


-- Table: platform
-- Mô tả: Chứa thông tin nền tảng chơi game (PC, PS5, Xbox, ...)

CREATE TABLE platform (
    platform_id INT PRIMARY KEY AUTO_INCREMENT,
    platform_name VARCHAR(100) UNIQUE NOT NULL
);

-- Table: game
-- Mô tả: Chứa thông tin game, liên kết tới thể loại (genre)

CREATE TABLE game (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    game_name VARCHAR(150) NOT NULL,
    release_year INT,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);


-- Table: game_publisher
-- Mô tả: Liên kết nhiều-nhiều giữa game và publisher

CREATE TABLE game_publisher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT NOT NULL,
    publisher_id INT NOT NULL,
    FOREIGN KEY (game_id) REFERENCES game(game_id),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id)
);

-- Table: game_platform
-- Mô tả: Liên kết nhiều-nhiều giữa game và platform

CREATE TABLE game_platform (
    id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT NOT NULL,
    platform_id INT NOT NULL,
    FOREIGN KEY (game_id) REFERENCES game(game_id),
    FOREIGN KEY (platform_id) REFERENCES platform(platform_id)
);
