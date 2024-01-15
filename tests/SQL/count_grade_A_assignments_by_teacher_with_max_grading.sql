-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT COUNT(ass1.grade) AS A_count
FROM assignments AS ass1
JOIN (
    SELECT teacher_id
    FROM assignments
    GROUP BY teacher_id
    ORDER BY COUNT(grade) DESC
    LIMIT 1
) AS max_teacher ON ass1.teacher_id = max_teacher.teacher_id
WHERE ass1.grade = 'A';
