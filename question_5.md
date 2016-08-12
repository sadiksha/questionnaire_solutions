Used sqlfiddle for testing http://sqlfiddle.com/#!15/c8edc/21.

* Give me the name and age of all employees.

`SELECT name, age FROM users;`

* Give me the name and organization of all employee.

`SELECT users.name, organizations.name AS organization_name FROM users, organizations WHERE users.org_id = organizations.id;`

* Give me the oldest person at each organization.

`SELECT org_id AS organization_id, users.name AS username, age FROM (SELECT *, row_number() over (PARTITION BY org_id ORDER BY age DESC) FROM users) AS users WHERE row_number = 1;`

* Find the first person who joined each company.

`SELECT org_id as organization_id, users.name AS username, (users.meta->>'joined') AS joined_date FROM (SELECT *, row_number() over (PARTITION BY org_id ORDER BY meta->>'joined' ASC) FROM users) AS users WHERE row_number = 1;`

* Give me the name and comment of all employees.

`SELECT name, meta->>'comment' AS comment FROM users;`
