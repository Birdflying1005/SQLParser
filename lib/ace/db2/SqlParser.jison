%lex

%options case-insensitive

%%
"--"(.*?)($|\r\n|\r|\n)							 return /* return 'COMMENT' */
\s+                                              /* skip whitespace */
'ADD'                                            return 'ADD'
'ALTER'                                          return 'ALTER'
'AND'                                            return 'AND'
'ANY'                                            return 'ANY'
'ALL'                                            return 'ALL'
'AS'                                             return 'AS'
'ASC'                                            return 'ASC'
'BEGIN'                                          return 'BEGIN'
'BETWEEN'                                        return 'BETWEEN'
'BIGINT'                                         return 'BIGINT'
'BINARY'                                         return 'BINARY'
'BOTH'                                           return 'BOTH'
'BY'                                             return 'BY'
'CASCADE'                                        return 'CASCADE'
'CASE'                                           return 'CASE'
'CHAR'                                           return 'CHAR'
'CLUSTER'                                        return 'CLUSTER'
'COLUMN'                                         return 'COLUMN'
'COLUMNS'                                        return 'COLUMNS'
'COMMIT'                                         return 'COMMIT'
'CONCAT'                                         return 'CONCAT'
'CONSISTENT'                                     return 'CONSISTENT'
'CREATE'                                         return 'CREATE'
'CREATETIME'                                     return 'CREATETIME'
'CROSS'                                          return 'CROSS'
'CURRENT_USER'                                   return 'CURRENT_USER'
'DATE'                                           return 'DATE'
'DATETIME'                                       return 'DATETIME'
'DEALLOCATE'                                     return 'DEALLOCATE'
'DECIMAL'                                        return 'DECIMAL'
'DEFAULT'                                        return 'DEFAULT'
'DELETE'                                         return 'DELETE'
'DESC'                                           return 'DESC'
'DESCRIBE'                                       return 'DESCRIBE'
'DISTINCT'                                       return 'DISTINCT'
'DOUBLE'                                         return 'DOUBLE'
'DROP'                                           return 'DROP'
'ELSE'                                           return 'ELSE'
'END'                                            return 'END'
'ERROR'                                          return 'ERROR'
'EXCEPT'                                         return 'EXCEPT'
'EXECUTE'                                        return 'EXECUTE'
'EXISTS'                                         return 'EXISTS'
'EXPLAIN'                                        return 'EXPLAIN'
'FIRST'                                          return 'FIRST' 
'FLOAT'                                          return 'FLOAT'
'FOR'                                            return 'FOR'
'FROM'                                           return 'FROM'
'FULL'                                           return 'FULL'
'GRANT'                                          return 'GRANT'
'GROUP'                                          return 'GROUP'
'GLOBAL'                                         return 'GLOBAL'
'HAVING'                                         return 'HAVING'
'IDENTIFIED'                                     return 'IDENTIFIED'
'IF'                                             return 'IF'
'IN'                                             return 'IN'
'INNER'                                          return 'INNER'
'INT'                                            return 'INTEGER'
'INTEGER'                                        return 'INTEGER'
'INTERSECT'                                      return 'INTERSECT'
'INSERT'                                         return 'INSERT'
'INTO'                                           return 'INTO'
'IS'                                             return 'IS'
'JOIN'                                           return 'JOIN'
'KEY'                                            return 'KEY'
'LAST'                                           return 'LAST'
'LEADING'                                        return 'LEADING'
'LEFT'                                           return 'LEFT'
'LIMIT'                                          return 'LIMIT'
'LIKE'                                           return 'LIKE'
'LOCAL'                                          return 'LOCAL'
'LOCKED'                                         return 'LOCKED'
'LOG'                                            return 'LOG'
'MEDIUMINT'                                      return 'MEDIUMINT'
'MEMORY'                                         return 'MEMORY'
'MOD'                                            return 'MOD'
'MODIFYTIME'                                     return 'MODIFYTIME'
'NOT'                                            return 'NOT'
'NULL'                                           return 'NULL'
'NUMERIC'                                        return 'NUMERIC'
'OFFSET'                                         return 'OFFSET'
'ON'                                             return 'ON'
'OPTION'                                         return 'OPTION'
'OR'                                             return 'OR'
'ORDER'                                          return 'ORDER'
'OUTER'                                          return 'OUTER'
'COMMENT'                                        return 'COMMENT'
'PARAMETERS'                                     return 'PARAMETERS'
'POWER'                                          return 'POWER'
'PRECISION'                                      return 'PRECISION'
'PREPARE'                                        return 'PREPARE'
'PRIMARY'                                        return 'PRIMARY'
'REAL'                                           return 'REAL'
'RENAME'                                         return 'RENAME'
'REPLACE'                                        return 'REPLACE'
'RESTRICT'                                       return 'RESTRICT'
'REVOKE'                                         return 'REVOKE'
'RIGHT'                                          return 'RIGHT'
'ROLLBACK'                                       return 'ROLLBACK'
'ROUND'                                          return 'ROUND'
'PRIVILEGES'                                     return 'PRIVILEGES'
'SELECT'                                         return 'SELECT'
'SCHEMA'                                         return 'SCHEMA'
'SCOPE'                                          return 'SCOPE'
'SESSION'                                        return 'SESSION'
'SET'                                            return 'SET'
'SHOW'                                           return 'SHOW'
'SIGN'                                           return 'SIGN'
'SMALLINT'                                       return 'SMALLINT'
'SNAPSHOT'                                       return 'SNAPSHOT'
'SPFILE'                                         return 'SPFILE'
'START'                                          return 'START'
'STATIC'                                         return 'STATIC'
'SYSTEM'                                         return 'SYSTEM'
'TABLE'                                          return 'TABLE'
'THEN'                                           return 'THEN'
'TIME'                                           return 'TIME'
'TIMESTAMP'                                      return 'TIMESTAMP'
'TINYINT'                                        return 'TINYINT'
'TO'                                             return 'TO'
'TRAILING'                                       return 'TRAILING'
'TRANSACTION'                                    return 'TRANSACTION'
'TRUNCATE'                                       return 'TRUNCATE'
'UNION'                                          return 'UNION'
'UPDATE'                                         return 'UPDATE'
'USER'                                           return 'USER'
'USING'                                          return 'USING'
'VALUES'                                         return 'VALUES'
'VARBINARY'                                      return 'VARBINARY'
'VARCHAR'                                        return 'VARCHAR'
'WHERE'                                          return 'WHERE'
'WHEN'                                           return 'WHEN'
'WITH'                                           return 'WITH'
';'                                              return ';'
','                                              return ','
'+'                                              return 'PLUS'
'-'                                              return 'MINUS'
'*'                                              return '*'
'/'                                              return 'DIVIDE'
'%'                                              return 'MODULO'
'='                                              return 'COMP_EQ'
'!='|'<>'                                        return 'COMP_NE'
'>='                                             return 'COMP_GE'
'>'                                              return 'COMP_GT'
'<='                                             return 'COMP_LE'
'<'                                              return 'COMP_LT'
'('                                              return '('
')'                                              return ')'
'||'                                             return 'CNNOP'
['](\\.|[^'])*[']                                return 'STRING'
[0-9]+(\.[0-9]+)?                                return 'NUMERIC'
[a-zA-Z_][a-zA-Z0-9_]* 			                 return 'IDENTIFIER'
<<EOF>>                                          return 'EOF'
.                                                return '.'

/lex

/* operator associations and precedence */

%left	UNION EXCEPT
%left	INTERSECT
%left	OR
%left	AND
%right NOT
%left COMP_LE COMP_LT COMP_EQ COMP_GT COMP_GE COMP_NE
%left CNNOP
%left LIKE
%nonassoc BETWEEN
%nonassoc IN

%left '+' '-'
%left '*' '/'
%right UMINUS
%left '(' ')'
%left '.'

%start sql_stmt

%%

sql_stmt:
    stmt_list EOF { return {nodeType: 'Main', value: $1}; }
  ;
		
stmt_list:
    stmt_list ';' stmt { }
  | stmt {}
  ;
  
stmt:
    select_stmt { $$ = $1; }
  | ';' { $$ = null; }
  | /*EMPTY*/   { $$ = null; }
  ;

/* expression grammar */

expr_list:
    expr {$$ = $1;}
  | expr_list ',' expr {}
  ;

column_ref:
    keyword
  | keyword '.' keyword
  | keyword '.' *
  | object_name '.' keyword
  | object_name { $$ = $1; console.log("column_ref->object_name");  }
  | object_name '.' object_name { console.log("relation_name->object_name"); }
  | object_name '.' '*' { console.log("object_name->*");  }
  ;
  
  
simple_expr:
    value { $$ = $1; }
  | '(' expr ')' { $$ = $2; }
  | '(' expr_list ',' expr ')' {}
  | case_expr  { $$ = $1; }
  | func_expr {$$ = $1; console.log("simple_expr->func_expr");}
  | column_ref { $$ = $1; console.log("simple_expr->column_ref"); }
  | select_with_parens    %prec UMINUS
    { $$ = $1;}
  ;

arith_expr:
    simple_expr   { $$ = $1; }
  | '+' arith_expr %prec UMINUS {}
  | '-' arith_expr %prec UMINUS { }
  | arith_expr '+' arith_expr { }
  | arith_expr '-' arith_expr { }
  | arith_expr '*' arith_expr { }
  | arith_expr '/' arith_expr { }
  ;


expr:
    '+' expr %prec UMINUS { }
  | '-' expr %prec UMINUS { }
  | expr '+' expr { }
  | expr '-' expr { }
  | expr '*' expr { }
  | expr '/' expr { }
  | expr COMP_LE expr { }
  | expr COMP_LT expr { }
  | expr COMP_EQ expr { }
  | expr COMP_GE expr { }
  | expr COMP_GT expr { }
  | expr COMP_NE expr { }
  | expr LIKE expr { }
  | expr NOT LIKE expr {}
  | expr AND expr %prec AND {}
  | expr OR expr %prec OR {}
  | expr IS NULL { }
  | expr IS NOT NULL { }
  | expr BETWEEN arith_expr AND arith_expr	    %prec BETWEEN {}
  | expr NOT BETWEEN arith_expr AND arith_expr	  %prec BETWEEN {}
  | expr IN in_expr{}
  | expr NOT IN in_expr{}
  | expr CNNOP expr {}
  | simple_expr   { $$ = $1; console.log("expr->simple_expr");}
  ;
  
in_expr:
    select_with_parens { $$ = $1; }
  | '(' expr_list ')' { }
  ;
  
case_expr:
    CASE case_arg when_clause_list case_default END {console.log("case_expr->case_expr");}
  ;
  
case_arg:
    expr                  { $$ = $1; }
  | /*EMPTY*/             { $$ = null; }
  ;

when_clause_list:
  	when_clause { $$ = $1; }
  | when_clause_list when_clause {}
  ;
 
when_clause:
  	WHEN expr THEN expr {console.log("when_clause->when_clause");}
  ;

case_default:
  	ELSE expr { $$ = $2; }
  | /*EMPTY*/ { }
  ;
  
func_expr:
    object_name '(' '*' ')' {}
  | CHAR '(' expr_list ')' {}
  | VARCHAR '(' expr_list ')' {}
  | object_name '(' expr_list ')' {console.log("func_expr->expr_list");}
  | object_name '(' expr AS data_type ')' {}
  | object_name '(' ')' {}
  ;

/*  
func_expr:
    function_name '(' '*' ')' {}
  | function_name '(' expr_list ')' {}
  | function_name '(' expr AS data_type ')' {}
  | function_name '(' ')' {}
  ;
*/

/* select grammar */
select_stmt:
    select_no_parens    %prec UMINUS
    { $$ = $1; console.log("select_stmt->select_no_parens");}
  | select_with_parens    %prec UMINUS
    { $$ = $1; }
  ;

select_with_parens:
    '(' select_no_parens ')'    { $$ = $2; }
  | '(' select_with_parens ')'    { $$ = $2; }
  ;
  
select_no_parens:
    /* no_table_select { $$= $1; console.log("select_no_parens->no_table_select");} */
    
  simple_select opt_for_update { $$ = $1; console.log("select_no_parens->simple_select opt_for_update"); }
  | select_clause opt_order_by opt_for_update { console.log("select_no_parens->select_clause"); }
  ;


no_table_select:
    SELECT opt_distinct select_expr_list {console.log("no_table_select->select_expr_list");}
  | SELECT opt_distinct select_expr_list FROM DUAL opt_where { console.log("no_table_select->FROM DUA"); }
  ;

select_clause:
    simple_select { $$ = $1; console.log("select_clause->simple_select");}
  | select_with_parens { $$ = $1; }
  ;
   
simple_select:
    SELECT opt_distinct select_expr_list
    FROM from_list
    opt_where opt_groupby opt_having
    { console.log("simple_select->simple_select"); }
  | select_clause UNION opt_distinct select_clause { }
  | select_clause INTERSECT opt_distinct select_clause { }
  | select_clause EXCEPT opt_distinct select_clause {}
  ;

opt_where:
    { $$ = null; }
  | WHERE expr { $$ = $2; }
  ;
   
opt_groupby:
    /* EMPTY */
    { $$ = null; }
  | GROUP BY expr_list { }
  ;
  
opt_order_by:
  	order_by    { $$ = $1;}
  | /*EMPTY*/    { $$ = null; }
  ;
  
order_by:
  	ORDER BY sort_list    {}
  ;
  
sort_list:
  	sort_key { $$ = $1; }
  | sort_list ',' sort_key {}
  ;

sort_key:
    expr opt_asc_desc {}
  ;
  
opt_for_update:
    /* EMPTY */
    { $$ = null; }
  | FOR UPDATE {}
  ;
  
opt_asc_desc:
    /* EMPTY */
    {}
  | ASC {}
  | DESC {}
  ;

opt_having:
    /* EMPTY */
    { $$ = 0; }
  | HAVING expr { $$ = $2; }
  ;
  
opt_distinct:
    /* EMPTY */
    { $$ = null;}
  | ALL {}
  | DISTINCT {}
  ;

projection:
    expr { console.log("projection->expr"); }
  | expr object_name { console.log("projection->expr column_label"); }
  | expr AS object_name { }
  | '*' {}
  ;

select_expr_list:
    projection { $$ = $1; console.log("select_expr_list->projection");}
  | select_expr_list ',' projection { }
  ;

from_list:
  	table_factor
    { $$ = $1; }
  | from_list ',' table_factor
    { }
  ;

table_factor:
    relation_factor
    {
      $$ = $1;
    }
  | relation_factor AS object_name /*relation_name*/
    {
    }
  | relation_factor object_name /*relation_name*/
    {
    }
  | select_with_parens   /* SELECT C FROM ( SELECT A FROM B ) */
    {
    }
  | select_with_parens AS object_name /* relation_name SELECT C FROM ( SELECT A FROM B ) A */
    {
    }
  | select_with_parens object_name /* relation_name SELECT C FROM ( SELECT A FROM B ) A */
    {
    }
  | joined_table
    {
    	$$ = $1;
    }
  | '(' joined_table ')' AS object_name /* relation_name */
    {
    }
  ;

relation_factor:
    object_name
    { $$ = $1; }
  | object_name '.' object_name {}
  ;

joined_table:
    '(' joined_table ')'
    {
    	$$ = $2;
    }
  | table_factor join_type JOIN table_factor ON expr
    {
    }
  | table_factor JOIN table_factor ON expr
    {
    }
  ;

join_type:
    FULL join_outer {}
  | LEFT join_outer {}
  | RIGHT join_outer {}
  | INNER {}
  ;

join_outer:
    OUTER                    { $$ = null; }
  | /* EMPTY */               { $$ = null; }
  ;

value:
    STRING { $$ = $1; } 
  | NUMERIC { $$ = $1; }
  | NULL { $$ = $1; }
  ;
  
/*===========================================================
 *
 *	Name classification
 *
 *===========================================================*/
 
object_name:
    IDENTIFIER
  ;

object_keyword_name:
    keyword
  | keyword '.' keyword
  | keyword '.' *
  | object_name '.' keyword
  ;
  
/*
keyword:
    ADD
  | FROM
  ;
*/

keyword:
    ADD
  | FROM
  | AND
  | ANY
  | ALL
  | AS
  | ASC
  | BEGIN
  | BETWEEN
  | BIGINT
  | BINARY
  | BOTH
  | BY
  | CASCADE
  | CASE
  | CHAR
  | CLUSTER
  | COLUMN
  | COLUMNS
  | COMMIT
  | CONCAT
  | CONSISTENT
  | CREATE
  | CREATETIME
  | CROSS
  | CURRENT_USER
  | DATE
  | DATETIME
  | DEALLOCATE
  | DECIMAL
  | DEFAULT
  | DELETE
  | DESC
  | DESCRIBE
  | DISTINCT
  | DOUBLE
  | DROP
  | ELSE
  | END
  | ERROR
  | EXCEPT
  | EXECUTE
  | EXISTS
  | EXPLAIN
  | FIRST
  | FLOAT
  | FOR
  | FROM
  | FULL
  | GRANT
  | GROUP
  | GLOBAL
  | HAVING
  | IDENTIFIED
  | IF
  | IN
  | INNER
  | INT
  | INTEGER
  | INTERSECT
  | INSERT
  | INTO
  | IS
  | JOIN
  | KEY
  | LAST
  | LEADING
  | LEFT
  | LIMIT
  | LIKE
  | LOCAL
  | LOCKED
  | LOG
  | MEDIUMINT
  | MEMORY
  | MOD
  | MODIFYTIME
  | NOT
  | NULL
  | NUMERIC
  | OFFSET
  | ON
  | OPTION
  | OR
  | ORDER
  | OUTER
  | COMMENT
  | PARAMETERS
  | POWER
  | PRECISION
  | PREPARE
  | PRIMARY
  | REAL
  | RENAME
  | REPLACE
  | RESTRICT
  | REVOKE
  | RIGHT
  | ROLLBACK
  | ROUND
  | PRIVILEGES
  | SELECT
  | SCHEMA
  | SCOPE
  | SESSION
  | SET
  | SHOW
  | SIGN
  | SMALLINT
  | SNAPSHOT
  | SPFILE
  | START
  | STATIC
  | SYSTEM
  | TABLE
  | THEN
  | TIME
  | TIMESTAMP
  | TINYINT
  | TO
  | TRAILING
  | TRANSACTION
  | TRUNCATE
  | UNION
  | UPDATE
  | USER
  | USING
  | VALUES
  | VARBINARY
  | VARCHAR
  | WHERE
  | WHEN
  | WITH
  ;
  
unreserved_keyword:
    AUTO_INCREMENT
  | CHUNKSERVER
  | COMPRESS_METHOD
  | CONSISTENT_MODE
  | EXPIRE_INFO
  | GRANTS
  | MERGESERVER
  | REPLICA_NUM
  | ROOTSERVER
  | SERVER
  | SERVER_IP
  | SERVER_PORT
  | SERVER_TYPE
  | STATUS
  | TABLET_BLOCK_SIZE
  | TABLET_MAX_SIZE
  | UNLOCKED
  | UPDATESERVER
  | USE_BLOOM_FILTER
  | VARIABLES
  | VERBOSE
  | WARNINGS
  ;
