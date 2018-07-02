/*
 *       Filename:  COMMITROLLBACKMAIN.sql
 *
 *    Description:  commit rollback benchmark test in pl sql
 *-
 *-
 *        Created:  06/29/2018
 *       Revision:  none
 *
 *        @Author:  Mahmut Erdem Özgen
 *       @Version:  1.0
 *
 * =====================================================================================
 */


C@/Users/merde/Documents/sqlCodes/COMMITPACK.pkb;
@/Users/merde/Documents/sqlCodes/COMMITPACK.pks;

EXECUTE COMMITPACK.INSERT_ROWS(1000);
EXECUTE COMMITPACK.INSERT_ROWS(10000);
EXECUTE COMMITPACK.INSERT_ROWS(100000);
EXECUTE COMMITPACK.INSERT_ROWS(1000000);

SELECT * FROM HR.TEMPLATE;

CREATE TABLE hr.template(id NUMBER, name VARCHAR2(20)) ;            
DROP TABLE hr.template;