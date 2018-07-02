/*
 *       Filename:  employee_info.pkb
 *
 *    Description:  package pkb
 *
 *        Created:  06/29/2018
 *       Revision:  none
 *
 *        @Author:  Mahmut Erdem Özgen
 *       @Version:  1.0
 *
 * =====================================================================================
 */
 CREATE OR REPLACE PACKAGE hr.employee_info AS
    FUNCTION get_employee_name (
        in_employee_id   IN hr.employees.employee_id%TYPE
    ) RETURN hr.employees.first_name%TYPE;

END employee_info;