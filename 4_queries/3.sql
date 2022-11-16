SELECT teachers.name as teacher, students.name as student, assignments.name as assignments, (completed_at - started_at) as duration
FROM assistance_requests
JOIN teachers on teachers.id = teacher_id
JOIN students on students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration