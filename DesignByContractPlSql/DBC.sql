PROCEDURE assert_pre
(condition_in IN BOOLEAN
,progname_in IN progname_t
,msg_in IN varchar2)
IS
BEGIN
assert(condition_in
,progname_in||':PRE:'||msg_in);
END assert_pre;


FUNCTION excuse_in_use (excuse_in IN excuse_excuse_t)
RETURN BOOLEAN
IS
c_progname CONSTANT progname_t:='EXCUSE_IN_USE';
l_return BOOLEAN;
BEGIN
--https://stackoverflow.com/questions/10941594/meaning-of-plsql-symbol
assert_pre(condition_in => excuse_in is not null
,progname_in => c_progname
,msg_in => 'excuse_in not null');

-- compute return value
l_return := g_excuses_used.EXISTS(excuse_in);

-- check return obligations
assert_post(condition_in => l_return is not null
,progname_in => c_progname
,msg_in => 'l_return not null');

END excuse_in_use;