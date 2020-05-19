DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS minor;
DROP TABLE IF EXISTS selection;
DROP TABLE IF EXISTS programme;

CREATE TABLE minor
(
    minor_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    minor_name   TEXT    NOT NULL,
    max_students INTEGER NOT NULL
);

CREATE TABLE programme
(
    prog_id        INTEGER PRIMARY KEY AUTOINCREMENT,
    programme_name TEXT NOT NULL
);


CREATE TABLE selection
(
    selection_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id        INTEGER NOT NULL,
    minor_choice_1 INTEGER NOT NULL,
    minor_choice_2 INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (minor_choice_1) REFERENCES user (user_id),
    FOREIGN KEY (minor_choice_2) REFERENCES user (user_id)
);


CREATE TABLE user
(
    user_id  INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    role     TEXT NOT NULL,
    prog_id  INTEGER DEFAULT NULL,
    FOREIGN KEY (prog_id) REFERENCES programme (prog_id)
);
