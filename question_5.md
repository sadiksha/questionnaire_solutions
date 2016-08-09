* Give me the name and age of all employees.
`Select name, age from users;`

* Give me the name and organization of all employee.
`Select users.name, organizations.name as organization_name from users, organizations where users.org_id = organizations.id;`

* Give me the oldest person at each organization.
`Select max(users.age), organizations.name as organization_name from users, organizations where organizations.id = users.org_id group by organizations.name;`

* Find the first person who joined each company.

* Give me the name and comment of all employees.
`Select name, meta->>'comment' as comment from users;`


