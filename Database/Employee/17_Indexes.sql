-- Indexes in Sql are used by queries to find data from tables quickly. 
-- Indexes are similar to an index in a book. They are used to find the data quickly.
   
   Create Index Ix_Person1_Salary
   On Person1 (Salary ASC)

-- To find all the index put on the table
  sp_Helpindex Person1