-- Questão 1:

SELECT users.id, users.name, cities.name as city
FROM users
JOIN cities
ON cities.id = users."cityId"
WHERE cities.name = 'Rio de Janeiro'


-- Questão 2: 

SELECT t.id AS id, u1.name AS writer, u2.name AS recipient, message
FROM testimonials t
JOIN users u1 ON t."writerId" = u1.id
JOIN users u2 ON t."recipientId" = u2.id;




-- Questão 3:

SELECT users.id as id, users.name as name, courses.name as course,
schools.name as school,
educations."endDate" as "endDate"
FROM users
JOIN educations
ON users.id = educations."userId"
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id AND status = 'finished'
WHERE users.id = 30




-- Questão 4: 

SELECT u.id AS id, u.name AS name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM experiences e
JOIN companies c ON e."companyId" = c.id
JOIN roles r ON e."roleId" = r.id
JOIN users u ON e."userId" = u.id
WHERE u.id = 50
AND e."endDate" IS NULL;


-- Bônus

SELECT s.id AS id, s.name AS school, c.name AS course, co.name AS company, r.name AS role
FROM educations e
JOIN schools s ON e."schoolId" = s.id
JOIN courses c ON e."courseId" = c.id
JOIN users u ON e."userId" = u.id
JOIN applicants a ON a."userId" = u.id
JOIN jobs j ON a."jobId" = j.id
JOIN companies co ON j."companyId" = co.id
JOIN roles r ON j."roleId" = r.id
WHERE co.id = 10
AND r.name = 'Software Engineer'
AND j.active = true;
