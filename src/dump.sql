CREATE DATABASE "shortly";

USE "shortly";

CREATE TABLE "users"(
    "id"        SERIAL PRIMARY KEY,
    "name"      VARCHAR(40) NOT NULL,
    "email"     VARCHAR(25) UNIQUE NOT NULL,
    "password"  TEXT NOT NULL,
    "createdAt" TIMESTAMP
);

CREATE TABLE "shortens"(
    "id"            SERIAL PRIMARY KEY,
    "url"           TEXT NOT NULL,
    "shortUrl"      TEXT NOT NULL,
    "visitCount"    INTEGER NOT NULL,
    "createdAt"     TIMESTAMP
);

CREATE TABLE "usersShortens"(
    "id"            SERIAL PRIMARY KEY,
    "shortensId"    INTEGER REFERENCES "shortens"("id") NOT NULL,
    "usersId"       INTEGER REFERENCES "users"("id") NOT NULL NOT NULL,
    "createdAt"     TIMESTAMP 
);
