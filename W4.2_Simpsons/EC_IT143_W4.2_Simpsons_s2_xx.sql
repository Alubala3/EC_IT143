/*
EC_IT143_W4.2_Simpsons_s2_xx.sql
Step 2: Begin creating an answer.

Where I am right now:
I have a question: How many Visa Costmo transactions did each 
Simpsons family member make?
I do not have an answer yet.

Next logical step:
The data I need lives in two tables in the Simpsons database:
  - FBS_Viza_Costmo: every Visa Costmo transaction, with a 
    Member_Name column indicating who made the transaction.
  - Family_Data: the Simpsons family members, with a Name column.

To get a count per member, I should:
  1. JOIN FBS_Viza_Costmo to Family_Data ON Member_Name = Name
  2. GROUP BY the member name
  3. COUNT(*) the rows

That will give me one row per family member with a transaction count.
*/