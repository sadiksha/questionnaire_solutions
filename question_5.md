Used sqlfiddle for testing http://sqlfiddle.com/#!15/c8edc/19.

* Give me the name and age of all employees.

`Select name, age from users;`

* Give me the name and organization of all employee.

`Select users.name, organizations.name as organization_name from users, organizations where users.org_id = organizations.id;`

* Give me the oldest person at each organization.

`Select org_id as organization_id, users.name as username, age from (select *, row_number() over (partition by org_id order by age desc) from users) as users where row_number = 1;`

* Find the first person who joined each company.

`Select org_id as organization_id, users.name as username, (users.meta->>'joined') as joined_date from (select *, row_number() over (partition by org_id order by meta->>'joined' asc) from users) as users where row_number = 1;`

* Give me the name and comment of all employees.

`Select name, meta->>'comment' as comment from users;`


