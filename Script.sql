CREATE TABLE if not exists Genres(
    ID INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE table if not exists Singers(
    ID INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE if not exists Albums (
    ID INT PRIMARY KEY,
    name VARCHAR(255),
    year INT
);

CREATE table if not exists Genre_singers(
    ID_singer INT,
    ID_genre INT,
    FOREIGN KEY (ID_singer) REFERENCES Singers(ID),
    FOREIGN KEY (ID_genre) REFERENCES Genres(ID)
);


CREATE table if not exists Singers_Albums(
    ID_singer INT,
    ID_album INT,
    FOREIGN KEY (ID_singer) REFERENCES Singers(ID),
    FOREIGN KEY (ID_album) REFERENCES Albums(ID)
);


CREATE table if not exists Songs(
    ID INT PRIMARY KEY,
    name VARCHAR(255),
    time TIME,
    ID_album INT,
    FOREIGN KEY (ID_album) REFERENCES Albums(ID)
);