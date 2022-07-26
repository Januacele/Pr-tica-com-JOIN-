-- Questão 1:

SELECT users.id, users.name, cities.name as city FROM users
JOIN cities
ON users.id = cities.id
WHERE cities.name = 'Rio de Janeiro'




-- Questão 2: 

SELECT users.name as writer, users.name as recipiente, testimonials.message as message FROM users
JOIN testimonials
ON users.id = testimonials.id




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

SELECT users.name as name, roles.name as role,
companies.name as company, experiences."startDate" as "startDate"
FROM users
JOIN experiences 
ON users.id = experiences."userId" AND experiences."endDate" = experiences."endDate"
JOIN roles
ON roles.id = experiences."roleId"
JOIN companies
ON companies.id = experiences."companyId"
WHERE users.id = 50
