/*
EC_IT143_W4.2_Simpsons_s5.2_xx.sql
Step 5.2: Refine the table architecture.

Rebuild t_Simpsons_TransactionsByMember with:
  - Explicit data types (NVARCHAR for name, INT for count)
  - NOT NULL constraint on MemberName
  - Primary key on MemberName (each member appears once)

This makes the table durable and query-safe.
*/

USE EC_IT143_DA;
GO

-- Drop the quick version
DROP TABLE IF EXISTS dbo.t_Simpsons_TransactionsByMember;
GO

-- Rebuild with proper structure
CREATE TABLE dbo.t_Simpsons_TransactionsByMember (
    MemberName        NVARCHAR(100) NOT NULL,
    TransactionCount  INT           NOT NULL,
    CONSTRAINT PK_t_Simpsons_TransactionsByMember PRIMARY KEY (MemberName)
);
GO

-- Test the structure (empty for now)
SELECT * FROM dbo.t_Simpsons_TransactionsByMember;