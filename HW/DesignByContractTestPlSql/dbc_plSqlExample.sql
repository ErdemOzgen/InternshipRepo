/*
 *       Filename:  dbc_plSqlExample.sql
 *
 *    Description:  design by contract example
 *--MORE INFO:https://www.slideshare.net/jberesni/contract-oriented-plsql-oppchi2008
 *--MORE and More info :https://www.slideshare.net/jberesni/contract-oriented-plsql-oppchi2008
 *        Created:  06/29/2018
 *       Revision:  none
 *
 *        @Author:  Mahmut Erdem Özgen
 *       @Version:  1.0
 *
 * =====================================================================================
 */


FUNCTION func01 (p1 varchar2 ) RETURN NUMBER
IS 
    l_return NUMBER;
    l_module VARCHAR2(30) := 'FUNC01';
BEGIN
--preconditions
assertpre(p1 IS NOT NULL,'p1 NOT NULL',l_module);
---func logic
null;

--postcondition check and return 
assertpost(l_return IS NOT NULL,'Return Not Null',l_module);

END func01;