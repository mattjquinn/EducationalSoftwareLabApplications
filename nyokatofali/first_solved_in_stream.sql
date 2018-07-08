/* This query asks: of all the problems solved
   by him/her and his/her stream peers, how
   many times was he/she the very first one
   to solve a problem? */

SELECT COUNT(*) AS total FROM (
  SELECT DISTINCT ON (p.problem_id_id)
    s.id, s.name, p.problem_id_id, p.passed_dtstamp
  FROM
    nyokatofali_student AS s, nyokatofali_progress AS p
  WHERE
    s.id = p.student_id_id
    AND p.passed_tests_percent = 100
    AND s.form = 1 
    AND s.stream = 'B'
    ORDER BY p.problem_id_id, p.passed_dtstamp
) AS subquery
WHERE id = 59;
