CREATE DATABASE IF NOT EXISTS tracing;

USE tracing;

CREATE TABLE IF NOT EXISTS tracing.people (
    name        VARCHAR(100),
    title       VARCHAR(10),
    description VARCHAR(100),
    PRIMARY KEY (name)
);

DELETE FROM tracing.people;

INSERT INTO tracing.people VALUES ('Gru', 'Felonius', 'Where are the minions?');
INSERT INTO tracing.people VALUES ('Nefario', 'Dr.', 'Why ... why are you so old?');
INSERT INTO tracing.people VALUES ('Agnes', '', 'Your unicorn is so fluffy!');
INSERT INTO tracing.people VALUES ('Edith', '', "Don't touch anything!");
INSERT INTO tracing.people VALUES ('Vector', '', 'Committing crimes with both direction and magnitude!');
INSERT INTO tracing.people VALUES ('Dave', 'Minion', 'Ngaaahaaa! Patalaki patalaku Big Boss!!');
