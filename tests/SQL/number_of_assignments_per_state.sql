-- Write query to get number of assignments for each state
SELECT state, COUNT(*) as state_count FROM assignments GROUP BY state;