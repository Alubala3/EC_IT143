/*
EC_IT143_W4.2_MyFC_s2_xx.sql
Step 2: Begin creating an answer.

Where I am right now:
I have a question: What is the total player salary per month in MyFC?
I do not have an answer yet.

Next logical step:
The data I need lives in tblPlayerFact, which has two columns:
  - as_of_date  (the month the snapshot was taken)
  - mtd_salary  (month-to-date salary for that player)

To get the total salary per month, I should:
  1. Group rows by as_of_date
  2. Sum mtd_salary within each group

That will give me one row per month with the combined salary.
*/