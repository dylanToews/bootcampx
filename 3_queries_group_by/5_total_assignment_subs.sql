SELECT cohorts.name, count(*) as total_submissions 
FROM assignment_submissions
JOIN students on students.id =assignment_submissions.student_id
JOIN cohorts on cohorts.id = students.cohort_id
GROUP BY cohort_id, cohorts.name
ORDER BY total_submissions DESC