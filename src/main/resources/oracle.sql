CREATE TABLE NEWS
(
    ID BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    DATE DATE DEFAULT NOW() NOT NULL,
    TITLE VARCHAR(100) NOT NULL,
    BRIEF VARCHAR(500) NOT NULL,
    CONTENT VARCHAR(2048) NOT NULL
);
