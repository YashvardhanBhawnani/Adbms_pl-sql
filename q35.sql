declare
  type emp_departments_type is table of emp4.employee_department%type;
type emp_names_type is table of emp4.employee_name%type;
emp_departments emp_departments_type;
emp_names emp_names_type;
department employees.employee_department%type;
name employees.employee_name%type;
begin
  emp_departments := emp_departments_type('Management', 'Technical');
emp_names := emp_names_type('John', 'Doe');
department := emp_departments.first;
name := emp_names.first;
while department is not null loop
  while name is not null loop
  dbms_output.put_line(emp_departments(department) || ' ' || emp_names(name));
name := emp_names.next(name);
  end loop;
department := emp_departments.next(department);
end loop;
end;
/