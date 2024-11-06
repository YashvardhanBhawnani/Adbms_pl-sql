create or replace function avgSalary(dep_name emp4.emp_department%type)
return emp4.emp_salary%type is
avgSal emp4.emp_salary%type;
begin
  select avg(emp_salary) into avgSal from emp4 where emp_department
  = dep_name;
return avgSal;
end avgSalary;
/