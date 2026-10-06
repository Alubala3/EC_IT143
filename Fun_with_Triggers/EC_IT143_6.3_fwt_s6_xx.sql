/*
EC_IT143_6.3_fwt_s6_xx.sql
Step 6: Ask the next question.

New question: How do I set "last modified by" to a specific user rather
             than the server login?

Plan: Use SUSER_NAME() or modify the trigger to read from a session
      variable instead of SUSER_SNAME().
*/