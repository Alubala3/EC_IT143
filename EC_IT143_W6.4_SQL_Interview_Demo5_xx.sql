/*
EC_IT143_W6.4_SQL_Interview_Demo5_xx.sql
Assignment: 6.4 SQL Interview Demonstration #5
Author:     Lubala Allan
Purpose:    Verbal answers to four SQL interview questions.
            No queries required — this is a talking interview.
*/

/* ------------------------------------------------------------
   Q1: How do you explain what SQL is to someone without a
       technical background?
   ------------------------------------------------------------ */
-- Answer:
-- SQL stands for Structured Query Language. It's the standard
-- language used to talk to databases. If a database is like a
-- giant filing cabinet, SQL is how you ask the cabinet for
-- specific files. It lets you add, retrieve, update, and
-- delete information in an organized way.

/* ------------------------------------------------------------
   Q2: What are the different types of keys in SQL, and when
       do you use them?
   ------------------------------------------------------------ */
-- Answer:
-- Primary Key    — uniquely identifies each row in a table.
--                  Used once per table, never NULL.
-- Foreign Key    — links one table to another. Used to enforce
--                  relationships between tables.
-- Candidate Key  — any column that COULD be a primary key.
-- Composite Key  — a key made of two or more columns.
-- Unique Key     — like a primary key, but allows one NULL.

/* ------------------------------------------------------------
   Q3: Can you list all of the joins in SQL and the use case
       for each of them?
   ------------------------------------------------------------ */
-- Answer:
-- INNER JOIN — returns only matching rows in both tables.
-- LEFT JOIN  — all rows from the left table + matches from right.
-- RIGHT JOIN — all rows from the right table + matches from left.
-- FULL JOIN  — all rows from both tables, matched where possible.
-- CROSS JOIN — every row from one table paired with every row
--              from the other (Cartesian product).
-- SELF JOIN  — joins a table to itself (used for hierarchies).

/* ------------------------------------------------------------
   Q4: What is the importance of data integrity in your work
       with SQL?
   ------------------------------------------------------------ */
-- Answer:
-- Data integrity means the data is accurate, consistent, and
-- trustworthy. Without it, reports are wrong, decisions are
-- bad, and trust in the system collapses. In SQL, integrity is
-- enforced with primary keys, foreign keys, constraints
-- (NOT NULL, UNIQUE, CHECK), and transactions. It matters
-- because businesses make real decisions based on this data.
