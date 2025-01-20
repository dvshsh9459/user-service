-- liquibase formatted sql

-- changeset AYUSH:1737108894547-1
CREATE TABLE "user_table" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "email" VARCHAR(255), "password" VARCHAR(255), "role" VARCHAR(255), CONSTRAINT "user_table_pkey" PRIMARY KEY ("id"));

-- changeset AYUSH:1737108894547-2
CREATE TABLE "employee" ("id" INTEGER NOT NULL, "salary" FLOAT8 NOT NULL, "aadhar_card_no" BIGINT NOT NULL, "contact_number" BIGINT NOT NULL, "name" VARCHAR(255), "qualification" VARCHAR(255), CONSTRAINT "employee_pkey" PRIMARY KEY ("id"));

-- changeset AYUSH:1737108894547-3
CREATE TABLE "student" ("id" INTEGER NOT NULL, "aadhar_card_no" BIGINT NOT NULL, "contact_no" BIGINT NOT NULL, "name" VARCHAR(255), "qualification" VARCHAR(255), CONSTRAINT "student_pkey" PRIMARY KEY ("id"));

-- changeset AYUSH:1737108894547-4
ALTER TABLE "employee" ADD CONSTRAINT "employee_aadhar_card_no_key" UNIQUE ("aadhar_card_no");

-- changeset AYUSH:1737108894547-5
ALTER TABLE "student" ADD CONSTRAINT "student_aadhar_card_no_key" UNIQUE ("aadhar_card_no");

-- changeset AYUSH:1737108894547-6
CREATE TABLE "admin" ("id" INTEGER NOT NULL, CONSTRAINT "admin_pkey" PRIMARY KEY ("id"));

-- changeset AYUSH:1737108894547-7
CREATE TABLE "jwt_token" ("id" INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, "expires_at" TIMESTAMP WITHOUT TIME ZONE, "issued_at" TIMESTAMP WITHOUT TIME ZONE, "email" VARCHAR(255), "token" VARCHAR(255), CONSTRAINT "jwt_token_pkey" PRIMARY KEY ("id"));

-- changeset AYUSH:1737108894547-8
ALTER TABLE "student" ADD CONSTRAINT "fk4bfhdr4y6nbfppbxyl8v3a174" FOREIGN KEY ("id") REFERENCES "user_table" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset AYUSH:1737108894547-9
ALTER TABLE "admin" ADD CONSTRAINT "fk54o4fghe5haybdn7456s7voy6" FOREIGN KEY ("id") REFERENCES "user_table" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

-- changeset AYUSH:1737108894547-10
ALTER TABLE "employee" ADD CONSTRAINT "fkrs9p6wnc5mqn645ivnt089wc8" FOREIGN KEY ("id") REFERENCES "user_table" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;

