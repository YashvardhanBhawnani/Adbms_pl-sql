create or replace procedure updateJobTitle
(
	emp_id in emp5.empId%type,
	new_jobId in emp5.job_id%type
)is
begin
	update emp5 set job_id = new_jobId where empId = emp_id;
	commit;
	dbms_output.put_line('Updated Job Id For Employee With id : '||emp_id||' to : '||new_jobId);
	dbms_output.put_line('New Job Title : '||new_jobId);
end updateJobTitle;

/