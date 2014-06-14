CREATE OR REPLACE PROCEDURE sample (v_empno in number)
AS
v_ename EMP.ENAME%TYPE;
v_mgr EMP.ENAME%TYPE;
BEGIN
SELECT e1.ename,e2.ename into v_ename,v_mgr FROM emp e1,emp e2 
WHERE e1.empno = v_empno and e1.mgr=e2.empno;
DBMS_OUTPUT.PUT_LINE('EMPLOYEE'||'='||v_ename||' '||'MANAGER'||'='||v_mgr);

EXCEPTION 
WHEN NO_DATA_FOUND THEN
v_ename:='nodata ';
v_mgr :='Nodata ';
DBMS_OUTPUT.PUT_LINE('EMPLOYEE'||'='||v_ename||' '||'MANAGER'||'='||v_mgr);
END;
/

set serveroutput on

exec sample(1000);
