create or replace procedure greet_user (p_name in varchar2) as
begin
dbms_output.put_line('hello,' ||p_name||'!');
end;
/
output
procedure created

set serveroutput on  ;

begin
   greet_user('niket') ; 
end ;
/
output 
hello,niket!


create or replace trigger log_employee_insert
after insert on employees
for each row
begin
dbms_output.put_line('new employee added: ' || :new.first_name|| '' || :new.last_name);
end;
/
