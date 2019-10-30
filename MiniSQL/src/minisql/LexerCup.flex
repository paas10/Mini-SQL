package minisql;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%column

LETRA = [a-zA-Z_]
DIGITO = [0-9]
WHITE = [ \t\r\n]
SLINEA = \r | \n | \r\n
ESPACIO = [ \t]
WHITE = {SLINEA} | {ESPACIO}

CADENA = ([^\r\n])*
CADENAS = ([^\r\n'])*
COMENTRIO_LINEA = "--" {CADENA}
COMENTARIO_MULTILINEA = "/" ~ "/"
ERROR_COMENTARIO_MULTILINEA = "/*" {CADENA}
COMENTARIO = {COMENTRIO_LINEA} | {COMENTARIO_MULTILINEA}

%{
    private Symbol symbol(int type, Object value){
        return new Symbol(type, yyline, yycolumn, value);
    }
    private Symbol symbol(int type){
        return new Symbol(type, yyline, yycolumn);
    }
%}

%%
"ADD" {return new Symbol(sym.ADD, yycolumn, yyline, yytext());}
"ALL" {return new Symbol(sym.ALL, yycolumn, yyline, yytext());}
"ALTER" {return new Symbol(sym.ALTER, yycolumn, yyline, yytext());}
"AND" {return new Symbol(sym.AND, yycolumn, yyline, yytext());}
"ANY" {return new Symbol(sym.ANY, yycolumn, yyline, yytext());}
"AS" {return new Symbol(sym.AS, yycolumn, yyline, yytext());}
"ASC" {return new Symbol(sym.ASC, yycolumn, yyline, yytext());}
"AUTHORIZATION" {return new Symbol(sym.AUTHORIZATION, yycolumn, yyline, yytext());}
"BACKUP" {return new Symbol(sym.BACKUP, yycolumn, yyline, yytext());}
"BEGIN" {return new Symbol(sym.BEGIN, yycolumn, yyline, yytext());}
"BETWEEN" {return new Symbol(sym.BETWEEN, yycolumn, yyline, yytext());}
"BREAK" {return new Symbol(sym.BREAK, yycolumn, yyline, yytext());}
"BROWSE" {return new Symbol(sym.BROWSE, yycolumn, yyline, yytext());}
"BULK" {return new Symbol(sym.BULK, yycolumn, yyline, yytext());}
"BY" {return new Symbol(sym.BY, yycolumn, yyline, yytext());}
"CASCADE" {return new Symbol(sym.CASCADE, yycolumn, yyline, yytext());}
"CASE" {return new Symbol(sym.CASE, yycolumn, yyline, yytext());}
"CHECK" {return new Symbol(sym.CHECK, yycolumn, yyline, yytext());}
"CHECKPOINT" {return new Symbol(sym.CHECKPOINT, yycolumn, yyline, yytext());}
"CLOSE" {return new Symbol(sym.CLOSE, yycolumn, yyline, yytext());}
"CLUSTERED" {return new Symbol(sym.CLUSTERED, yycolumn, yyline, yytext());}
"COALESCE" {return new Symbol(sym.COALESCE, yycolumn, yyline, yytext());}
"COLLATE" {return new Symbol(sym.COLLATE, yycolumn, yyline, yytext());}
"COLUMN" {return new Symbol(sym.COLUMN, yycolumn, yyline, yytext());}
"COMMIT" {return new Symbol(sym.COMMIT, yycolumn, yyline, yytext());}
"COMPUTE" {return new Symbol(sym.COMPUTE, yycolumn, yyline, yytext());}
"CONSTRAINT" {return new Symbol(sym.CONSTRAINT, yycolumn, yyline, yytext());}
"CONTAINS" {return new Symbol(sym.CONTAINS, yycolumn, yyline, yytext());}
"CONTAINSTABLE" {return new Symbol(sym.CONTAINSTABLE, yycolumn, yyline, yytext());}
"CONTINUE" {return new Symbol(sym.CONTINUE, yycolumn, yyline, yytext());}
"CONVERT" {return new Symbol(sym.CONVERT, yycolumn, yyline, yytext());}
"CREATE" {return new Symbol(sym.CREATE, yycolumn, yyline, yytext());}
"CROSS" {return new Symbol(sym.CROSS, yycolumn, yyline, yytext());}
"CURRENT" {return new Symbol(sym.CURRENT, yycolumn, yyline, yytext());}
"CURRENT_DATE" {return new Symbol(sym.CURRENT_DATE, yycolumn, yyline, yytext());}
"CURRENT_TIME" {return new Symbol(sym.CURRENT_TIME, yycolumn, yyline, yytext());}
"CURRENT_TIMESTAMP" {return new Symbol(sym.CURRENT_TIMESTAMP, yycolumn, yyline, yytext());}
"CURRENT_USER" {return new Symbol(sym.CURRENT_USER, yycolumn, yyline, yytext());}
"CURSOR" {return new Symbol(sym.CURSOR, yycolumn, yyline, yytext());}
"DATABASE" {return new Symbol(sym.DATABASE, yycolumn, yyline, yytext());}
"DBCC" {return new Symbol(sym.DBCC, yycolumn, yyline, yytext());}
"DEALLOCATE" {return new Symbol(sym.DEALLOCATE, yycolumn, yyline, yytext());}
"DECLARE" {return new Symbol(sym.DECLARE, yycolumn, yyline, yytext());}
"DEFAULT" {return new Symbol(sym.DEFAULT, yycolumn, yyline, yytext());}
"DELETE" {return new Symbol(sym.DELETE, yycolumn, yyline, yytext());}
"DENY" {return new Symbol(sym.DENY, yycolumn, yyline, yytext());}
"DESC" {return new Symbol(sym.DESC, yycolumn, yyline, yytext());}
"DISK" {return new Symbol(sym.DISK, yycolumn, yyline, yytext());}
"DISTINCT" {return new Symbol(sym.DISTINCT, yycolumn, yyline, yytext());}
"DISTRIBUTED" {return new Symbol(sym.DISTRIBUTED, yycolumn, yyline, yytext());}
"DOUBLE" {return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext());}
"DROP" {return new Symbol(sym.DROP, yycolumn, yyline, yytext());}
"DUMP" {return new Symbol(sym.DUMP, yycolumn, yyline, yytext());}
"ELSE" {return new Symbol(sym.ELSE, yycolumn, yyline, yytext());}
"END" {return new Symbol(sym.END, yycolumn, yyline, yytext());}
"ERRLVL" {return new Symbol(sym.ERRLVL, yycolumn, yyline, yytext());}
"ESCAPE" {return new Symbol(sym.ESCAPE, yycolumn, yyline, yytext());}
"EXCEPT" {return new Symbol(sym.EXCEPT, yycolumn, yyline, yytext());}
"EXEC" {return new Symbol(sym.EXEC, yycolumn, yyline, yytext());}
"EXECUTE" {return new Symbol(sym.EXECUTE, yycolumn, yyline, yytext());}
"EXISTS" {return new Symbol(sym.EXISTS, yycolumn, yyline, yytext());}
"EXIT" {return new Symbol(sym.EXIT, yycolumn, yyline, yytext());}
"EXTERNAL" {return new Symbol(sym.EXTERNAL, yycolumn, yyline, yytext());}
"FETCH" {return new Symbol(sym.FETCH, yycolumn, yyline, yytext());}
"FILE" {return new Symbol(sym.FILE, yycolumn, yyline, yytext());}
"FILLFACTOR" {return new Symbol(sym.FILLFACTOR, yycolumn, yyline, yytext());}
"FOR" {return new Symbol(sym.FOR, yycolumn, yyline, yytext());}
"FOREIGN" {return new Symbol(sym.FOREIGN, yycolumn, yyline, yytext());}
"FREETEXT" {return new Symbol(sym.FREETEXT, yycolumn, yyline, yytext());}
"FREETEXTTABLE" {return new Symbol(sym.FREETEXTTABLE, yycolumn, yyline, yytext());}
"FROM" {return new Symbol(sym.FROM, yycolumn, yyline, yytext());}
"FULL" {return new Symbol(sym.FULL, yycolumn, yyline, yytext());}
"FUNCTION" {return new Symbol(sym.FUNCTION, yycolumn, yyline, yytext());}
"GOTO" {return new Symbol(sym.GOTO, yycolumn, yyline, yytext());}
"GRANT" {return new Symbol(sym.GRANT, yycolumn, yyline, yytext());}
"GROUP" {return new Symbol(sym.GROUP, yycolumn, yyline, yytext());}
"HAVING" {return new Symbol(sym.HAVING, yycolumn, yyline, yytext());}
"HOLDLOCK" {return new Symbol(sym.HOLDLOCK, yycolumn, yyline, yytext());}
"IDENTITY" {return new Symbol(sym.IDENTITY, yycolumn, yyline, yytext());}
"IDENTITY_INSERT" {return new Symbol(sym.IDENTITY_INSERT, yycolumn, yyline, yytext());}
"IDENTITYCOL" {return new Symbol(sym.IDENTITYCOL, yycolumn, yyline, yytext());}
"IF" {return new Symbol(sym.IF, yycolumn, yyline, yytext());}
"IN" {return new Symbol(sym.IN, yycolumn, yyline, yytext());}
"INDEX" {return new Symbol(sym.INDEX, yycolumn, yyline, yytext());}
"INNER" {return new Symbol(sym.INNER, yycolumn, yyline, yytext());}
"INSERT" {return new Symbol(sym.INSERT, yycolumn, yyline, yytext());}
"INTERSECT" {return new Symbol(sym.INTERSECT, yycolumn, yyline, yytext());}
"INTO" {return new Symbol(sym.INTO, yycolumn, yyline, yytext());}
"IS" {return new Symbol(sym.IS, yycolumn, yyline, yytext());}
"JOIN" {return new Symbol(sym.JOIN, yycolumn, yyline, yytext());}
"KEY" {return new Symbol(sym.KEY, yycolumn, yyline, yytext());}
"KILL" {return new Symbol(sym.KILL, yycolumn, yyline, yytext());}
"LEFT" {return new Symbol(sym.LEFT, yycolumn, yyline, yytext());}
"LIKE" {return new Symbol(sym.LIKE, yycolumn, yyline, yytext());}
"LINENO" {return new Symbol(sym.LINENO, yycolumn, yyline, yytext());}
"LOAD" {return new Symbol(sym.LOAD, yycolumn, yyline, yytext());}
"MERGE" {return new Symbol(sym.MERGE, yycolumn, yyline, yytext());}
"NATIONAL" {return new Symbol(sym.NATIONAL, yycolumn, yyline, yytext());}
"NOCHECK" {return new Symbol(sym.NOCHECK, yycolumn, yyline, yytext());}
"NONCLUSTERED" {return new Symbol(sym.NONCLUSTERED, yycolumn, yyline, yytext());}
"NOT" {return new Symbol(sym.NOT, yycolumn, yyline, yytext());}
"NULL" {return new Symbol(sym.NULL, yycolumn, yyline, yytext());}
"NULLIF" {return new Symbol(sym.NULLIF, yycolumn, yyline, yytext());}
"OF" {return new Symbol(sym.OF, yycolumn, yyline, yytext());}
"OFF" {return new Symbol(sym.OFF, yycolumn, yyline, yytext());}
"OFFSETS" {return new Symbol(sym.OFFSETS, yycolumn, yyline, yytext());}
"ON" {return new Symbol(sym.ON, yycolumn, yyline, yytext());}
"OPEN" {return new Symbol(sym.OPEN, yycolumn, yyline, yytext());}
"OPENDATASOURCE" {return new Symbol(sym.OPENDATASOURCE, yycolumn, yyline, yytext());}
"OPENQUERY" {return new Symbol(sym.OPENQUERY, yycolumn, yyline, yytext());}
"OPENROWSET" {return new Symbol(sym.OPENROWSET, yycolumn, yyline, yytext());}
"OPENXML" {return new Symbol(sym.OPENXML, yycolumn, yyline, yytext());}
"OPTION" {return new Symbol(sym.OPTION, yycolumn, yyline, yytext());}
"OR" {return new Symbol(sym.OR, yycolumn, yyline, yytext());}
"ORDER" {return new Symbol(sym.ORDER, yycolumn, yyline, yytext());}
"OUT" {return new Symbol(sym.OUT, yycolumn, yyline, yytext());}
"OUTER" {return new Symbol(sym.OUTER, yycolumn, yyline, yytext());}
"OVER" {return new Symbol(sym.OVER, yycolumn, yyline, yytext());}
"PERCENT" {return new Symbol(sym.PERCENT, yycolumn, yyline, yytext());}
"PIVOT" {return new Symbol(sym.PIVOT, yycolumn, yyline, yytext());}
"PLAN" {return new Symbol(sym.PLAN, yycolumn, yyline, yytext());}
"PRECISION" {return new Symbol(sym.PRECISION, yycolumn, yyline, yytext());}
"PRIMARY" {return new Symbol(sym.PRIMARY, yycolumn, yyline, yytext());}
"PRINT" {return new Symbol(sym.PRINT, yycolumn, yyline, yytext());}
"PROC" {return new Symbol(sym.PROC, yycolumn, yyline, yytext());}
"PROCEDURE" {return new Symbol(sym.PROCEDURE, yycolumn, yyline, yytext());}
"PUBLIC" {return new Symbol(sym.PUBLIC, yycolumn, yyline, yytext());}
"RAISERROR" {return new Symbol(sym.RAISERROR, yycolumn, yyline, yytext());}
"READ" {return new Symbol(sym.READ, yycolumn, yyline, yytext());}
"READTEXT" {return new Symbol(sym.READTEXT, yycolumn, yyline, yytext());}
"RECONFIGURE" {return new Symbol(sym.RECONFIGURE, yycolumn, yyline, yytext());}
"REFERENCES" {return new Symbol(sym.REFERENCES, yycolumn, yyline, yytext());}
"REPLICATION" {return new Symbol(sym.REPLICATION, yycolumn, yyline, yytext());}
"RESTORE" {return new Symbol(sym.RESTORE, yycolumn, yyline, yytext());}
"RESTRICT" {return new Symbol(sym.RESTRICT, yycolumn, yyline, yytext());}
"RETURN" {return new Symbol(sym.RETURN, yycolumn, yyline, yytext());}
"REVERT" {return new Symbol(sym.REVERT, yycolumn, yyline, yytext());}
"REVOKE" {return new Symbol(sym.REVOKE, yycolumn, yyline, yytext());}
"RIGHT" {return new Symbol(sym.RIGHT, yycolumn, yyline, yytext());}
"ROLLBACK" {return new Symbol(sym.ROLLBACK, yycolumn, yyline, yytext());}
"ROWCOUNT" {return new Symbol(sym.ROWCOUNT, yycolumn, yyline, yytext());}
"ROWGUIDCOL" {return new Symbol(sym.ROWGUIDCOL, yycolumn, yyline, yytext());}
"RULE" {return new Symbol(sym.RULE, yycolumn, yyline, yytext());}
"SAVE" {return new Symbol(sym.SAVE, yycolumn, yyline, yytext());}
"SCHEMA" {return new Symbol(sym.SCHEMA, yycolumn, yyline, yytext());}
"SECURITYAUDIT" {return new Symbol(sym.SECURITYAUDIT, yycolumn, yyline, yytext());}
"SELECT" {return new Symbol(sym.SELECT, yycolumn, yyline, yytext());}
"SEMANTICKEYPHRASETABLE" {return new Symbol(sym.SEMANTICKEYPHRASETABLE, yycolumn, yyline, yytext());}
"SEMANTICSIMILARITYDETAILSTABLE" {return new Symbol(sym.SEMANTICSIMILARITYDETAILSTABLE, yycolumn, yyline, yytext());}
"SEMANTICSIMILARITYTABLE" {return new Symbol(sym.SEMANTICSIMILARITYTABLE, yycolumn, yyline, yytext());}
"SESSION_USER" {return new Symbol(sym.SESSION_USER, yycolumn, yyline, yytext());}
"SET" {return new Symbol(sym.SET, yycolumn, yyline, yytext());}
"SETUSER" {return new Symbol(sym.SETUSER, yycolumn, yyline, yytext());}
"SHUTDOWN" {return new Symbol(sym.SHUTDOWN, yycolumn, yyline, yytext());}
"SOME" {return new Symbol(sym.SOME, yycolumn, yyline, yytext());}
"STATISTICS" {return new Symbol(sym.STATISTICS, yycolumn, yyline, yytext());}
"SYSTEM_USER" {return new Symbol(sym.SYSTEM_USER, yycolumn, yyline, yytext());}
"TABLE" {return new Symbol(sym.TABLE, yycolumn, yyline, yytext());}
"TABLESAMPLE" {return new Symbol(sym.TABLESAMPLE, yycolumn, yyline, yytext());}
"TEXTSIZE" {return new Symbol(sym.TEXTSIZE, yycolumn, yyline, yytext());}
"THEN" {return new Symbol(sym.THEN, yycolumn, yyline, yytext());}
"TO" {return new Symbol(sym.TO, yycolumn, yyline, yytext());}
"TOP" {return new Symbol(sym.TOP, yycolumn, yyline, yytext());}
"TRAN" {return new Symbol(sym.TRAN, yycolumn, yyline, yytext());}
"TRANSACTION" {return new Symbol(sym.TRANSACTION, yycolumn, yyline, yytext());}
"TRIGGER" {return new Symbol(sym.TRIGGER, yycolumn, yyline, yytext());}
"TRUNCATE" {return new Symbol(sym.TRUNCATE, yycolumn, yyline, yytext());}
"TRY_CONVERT" {return new Symbol(sym.TRY_CONVERT, yycolumn, yyline, yytext());}
"TSEQUAL" {return new Symbol(sym.TSEQUAL, yycolumn, yyline, yytext());}
"UNION" {return new Symbol(sym.UNION, yycolumn, yyline, yytext());}
"UNIQUE" {return new Symbol(sym.UNIQUE, yycolumn, yyline, yytext());}
"UNPIVOT" {return new Symbol(sym.UNPIVOT, yycolumn, yyline, yytext());}
"UPDATE" {return new Symbol(sym.UPDATE, yycolumn, yyline, yytext());}
"UPDATETEXT" {return new Symbol(sym.UPDATETEXT, yycolumn, yyline, yytext());}
"USE" {return new Symbol(sym.USE, yycolumn, yyline, yytext());}
"USER" {return new Symbol(sym.USER, yycolumn, yyline, yytext());}
"VALUES" {return new Symbol(sym.VALUES, yycolumn, yyline, yytext());}
"VARYING" {return new Symbol(sym.VARYING, yycolumn, yyline, yytext());}
"VIEW" {return new Symbol(sym.VIEW, yycolumn, yyline, yytext());}
"WAITFOR" {return new Symbol(sym.WAITFOR, yycolumn, yyline, yytext());}
"WHEN" {return new Symbol(sym.WHEN, yycolumn, yyline, yytext());}
"WHERE" {return new Symbol(sym.WHERE, yycolumn, yyline, yytext());}
"WHILE" {return new Symbol(sym.WHILE, yycolumn, yyline, yytext());}
"WITH" {return new Symbol(sym.WITH, yycolumn, yyline, yytext());}
"WITHIN GROUP" {return new Symbol(sym.WITHIN_GROUP, yycolumn, yyline, yytext());}
"WRITETEXT" {return new Symbol(sym.WRITETEXT, yycolumn, yyline, yytext());}
"ABSOLUTE" {return new Symbol(sym.ABSOLUTE, yycolumn, yyline, yytext());}
"ACTION" {return new Symbol(sym.ACTION, yycolumn, yyline, yytext());}
"ADA" {return new Symbol(sym.ADA, yycolumn, yyline, yytext());}
"ALLOCATE" {return new Symbol(sym.ALLOCATE, yycolumn, yyline, yytext());}
"ARE" {return new Symbol(sym.ARE, yycolumn, yyline, yytext());}
"ASSERTION" {return new Symbol(sym.ASSERTION, yycolumn, yyline, yytext());}
"AT" {return new Symbol(sym.AT, yycolumn, yyline, yytext());}
"AVG" {return new Symbol(sym.AVG, yycolumn, yyline, yytext());}
"BIT" {return new Symbol(sym.BIT, yycolumn, yyline, yytext());}
"BIT_LENGTH" {return new Symbol(sym.BIT_LENGTH, yycolumn, yyline, yytext());}
"BOTH" {return new Symbol(sym.BOTH, yycolumn, yyline, yytext());}
"CASCADED" {return new Symbol(sym.CASCADED, yycolumn, yyline, yytext());}
"CAST" {return new Symbol(sym.CAST, yycolumn, yyline, yytext());}
"CATALOG" {return new Symbol(sym.CATALOG, yycolumn, yyline, yytext());}
"CHAR" {return new Symbol(sym.CHAR, yycolumn, yyline, yytext());}
"CHAR_LENGTH" {return new Symbol(sym.CHAR_LENGTH, yycolumn, yyline, yytext());}
"CHARACTER" {return new Symbol(sym.CHARACTER, yycolumn, yyline, yytext());}
"CHARACTER_LENGTH" {return new Symbol(sym.CHARACTER_LENGTH, yycolumn, yyline, yytext());}
"COLLATION" {return new Symbol(sym.COLLATION, yycolumn, yyline, yytext());}
"CONNECT" {return new Symbol(sym.CONNECT, yycolumn, yyline, yytext());}
"CONNECTION" {return new Symbol(sym.CONNECTION, yycolumn, yyline, yytext());}
"CONSTRAINTS" {return new Symbol(sym.CONSTRAINTS, yycolumn, yyline, yytext());}
"CORRESPONDING" {return new Symbol(sym.CORRESPONDING, yycolumn, yyline, yytext());}
"COUNT" {return new Symbol(sym.COUNT, yycolumn, yyline, yytext());}
"DATE" {return new Symbol(sym.DATE, yycolumn, yyline, yytext());}
"DAY" {return new Symbol(sym.DAY, yycolumn, yyline, yytext());}
"DEC" {return new Symbol(sym.DEC, yycolumn, yyline, yytext());}
"DECIMAL" {return new Symbol(sym.DECIMAL, yycolumn, yyline, yytext());}
"DEFERRABLE" {return new Symbol(sym.DEFERRABLE, yycolumn, yyline, yytext());}
"DEFERRED" {return new Symbol(sym.DEFERRED, yycolumn, yyline, yytext());}
"DESCRIBE" {return new Symbol(sym.DESCRIBE, yycolumn, yyline, yytext());}
"DESCRIPTOR" {return new Symbol(sym.DESCRIPTOR, yycolumn, yyline, yytext());}
"DIAGNOSTICS" {return new Symbol(sym.DIAGNOSTICS, yycolumn, yyline, yytext());}
"DISCONNECT" {return new Symbol(sym.DISCONNECT, yycolumn, yyline, yytext());}
"DOMAIN" {return new Symbol(sym.DOMAIN, yycolumn, yyline, yytext());}
"END-EXEC" {return new Symbol(sym.END_EXEC, yycolumn, yyline, yytext());}
"EXCEPTION" {return new Symbol(sym.EXCEPTION, yycolumn, yyline, yytext());}
"EXTRACT" {return new Symbol(sym.EXTRACT, yycolumn, yyline, yytext());}
"FALSE" {return new Symbol(sym.FALSE, yycolumn, yyline, yytext());}
"FIRST" {return new Symbol(sym.FIRST, yycolumn, yyline, yytext());}
"FLOAT" {return new Symbol(sym.FLOAT, yycolumn, yyline, yytext());}
"FORTRAN" {return new Symbol(sym.FORTRAN, yycolumn, yyline, yytext());}
"FOUND" {return new Symbol(sym.FOUND, yycolumn, yyline, yytext());}
"GET" {return new Symbol(sym.GET, yycolumn, yyline, yytext());}
"GLOBAL" {return new Symbol(sym.GLOBAL, yycolumn, yyline, yytext());}
"GO" {return new Symbol(sym.GO, yycolumn, yyline, yytext());}
"HOUR" {return new Symbol(sym.HOUR, yycolumn, yyline, yytext());}
"IMMEDIATE" {return new Symbol(sym.IMMEDIATE, yycolumn, yyline, yytext());}
"INCLUDE" {return new Symbol(sym.INCLUDE, yycolumn, yyline, yytext());}
"INDICATOR" {return new Symbol(sym.INDICATOR, yycolumn, yyline, yytext());}
"INITIALLY" {return new Symbol(sym.INITIALLY, yycolumn, yyline, yytext());}
"INPUT" {return new Symbol(sym.INPUT, yycolumn, yyline, yytext());}
"INSENSITIVE" {return new Symbol(sym.INSENSITIVE, yycolumn, yyline, yytext());}
"INT" {return new Symbol(sym.INT, yycolumn, yyline, yytext());}
"INTEGER" {return new Symbol(sym.INTEGER, yycolumn, yyline, yytext());}
"INTERVAL" {return new Symbol(sym.INTERVAL, yycolumn, yyline, yytext());}
"ISOLATION" {return new Symbol(sym.ISOLATION, yycolumn, yyline, yytext());}
"LANGUAGE" {return new Symbol(sym.LANGUAGE, yycolumn, yyline, yytext());}
"LAST" {return new Symbol(sym.LAST, yycolumn, yyline, yytext());}
"LEADING" {return new Symbol(sym.LEADING, yycolumn, yyline, yytext());}
"LEVEL" {return new Symbol(sym.LEVEL, yycolumn, yyline, yytext());}
"LOCAL" {return new Symbol(sym.LOCAL, yycolumn, yyline, yytext());}
"LOWER" {return new Symbol(sym.LOWER, yycolumn, yyline, yytext());}
"MATCH" {return new Symbol(sym.MATCH, yycolumn, yyline, yytext());}
"MAX" {return new Symbol(sym.MAX, yycolumn, yyline, yytext());}
"MIN" {return new Symbol(sym.MIN, yycolumn, yyline, yytext());}
"MINUTE" {return new Symbol(sym.MINUTE, yycolumn, yyline, yytext());}
"MODULE" {return new Symbol(sym.MODULE, yycolumn, yyline, yytext());}
"MONTH" {return new Symbol(sym.MONTH, yycolumn, yyline, yytext());}
"NAME" {return new Symbol(sym.NAME, yycolumn, yyline, yytext());}
"NAMES" {return new Symbol(sym.NAMES, yycolumn, yyline, yytext());}
"FILENAME" {return new Symbol(sym.FILENAME, yycolumn, yyline, yytext());}
"NATURAL" {return new Symbol(sym.NATURAL, yycolumn, yyline, yytext());}
"NCHAR" {return new Symbol(sym.NCHAR, yycolumn, yyline, yytext());}
"NEXT" {return new Symbol(sym.NEXT, yycolumn, yyline, yytext());}
"NO" {return new Symbol(sym.NO, yycolumn, yyline, yytext());}
"NONE" {return new Symbol(sym.NONE, yycolumn, yyline, yytext());}
"NUMERIC" {return new Symbol(sym.NUMERIC, yycolumn, yyline, yytext());}
"OCTET_LENGTH" {return new Symbol(sym.OCTET_LENGTH, yycolumn, yyline, yytext());}
"ONLY" {return new Symbol(sym.ONLY, yycolumn, yyline, yytext());}
"OUTPUT" {return new Symbol(sym.OUTPUT, yycolumn, yyline, yytext());}
"OVERLAPS" {return new Symbol(sym.OVERLAPS, yycolumn, yyline, yytext());}
"PAD" {return new Symbol(sym.PAD, yycolumn, yyline, yytext());}
"PARTIAL" {return new Symbol(sym.PARTIAL, yycolumn, yyline, yytext());}
"PASCAL" {return new Symbol(sym.PASCAL, yycolumn, yyline, yytext());}
"POSITION" {return new Symbol(sym.POSITION, yycolumn, yyline, yytext());}
"PREPARE" {return new Symbol(sym.PREPARE, yycolumn, yyline, yytext());}
"PRESERVE" {return new Symbol(sym.PRESERVE, yycolumn, yyline, yytext());}
"PRIOR" {return new Symbol(sym.PRIOR, yycolumn, yyline, yytext());}
"PRIVILEGES" {return new Symbol(sym.PRIVILEGES, yycolumn, yyline, yytext());}
"REAL" {return new Symbol(sym.REAL, yycolumn, yyline, yytext());}
"RELATIVE" {return new Symbol(sym.RELATIVE, yycolumn, yyline, yytext());}
"ROWS" {return new Symbol(sym.ROWS, yycolumn, yyline, yytext());}
"SCROLL" {return new Symbol(sym.SCROLL, yycolumn, yyline, yytext());}
"SECOND" {return new Symbol(sym.SECOND, yycolumn, yyline, yytext());}
"SECTION" {return new Symbol(sym.SECTION, yycolumn, yyline, yytext());}
"SESSION" {return new Symbol(sym.SESSION, yycolumn, yyline, yytext());}
"SIZE" {return new Symbol(sym.SIZE, yycolumn, yyline, yytext());}
"SMALLINT" {return new Symbol(sym.SMALLINT, yycolumn, yyline, yytext());}
"SPACE" {return new Symbol(sym.SPACE, yycolumn, yyline, yytext());}
"SQL" {return new Symbol(sym.SQL, yycolumn, yyline, yytext());}
"SQLCA" {return new Symbol(sym.SQLCA, yycolumn, yyline, yytext());}
"SQLCODE" {return new Symbol(sym.SQLCODE, yycolumn, yyline, yytext());}
"SQLERROR" {return new Symbol(sym.SQLERROR, yycolumn, yyline, yytext());}
"SQLSTATE" {return new Symbol(sym.SQLSTATE, yycolumn, yyline, yytext());}
"SQLWARNING" {return new Symbol(sym.SQLWARNING, yycolumn, yyline, yytext());}
"SUBSTRING" {return new Symbol(sym.SUBSTRING, yycolumn, yyline, yytext());}
"SUM" {return new Symbol(sym.SUM, yycolumn, yyline, yytext());}
"TEMPORARY" {return new Symbol(sym.TEMPORARY, yycolumn, yyline, yytext());}
"TIME" {return new Symbol(sym.TIME, yycolumn, yyline, yytext());}
"TIMESTAMP" {return new Symbol(sym.TIMESTAMP, yycolumn, yyline, yytext());}
"TIMEZONE_HOUR" {return new Symbol(sym.TIMEZONE_HOUR, yycolumn, yyline, yytext());}
"TIMEZONE_MINUTE" {return new Symbol(sym.TIMEZONE_MINUTE, yycolumn, yyline, yytext());}
"TRAILING" {return new Symbol(sym.TRAILING, yycolumn, yyline, yytext());}
"TRANSLATE" {return new Symbol(sym.TRANSLATE, yycolumn, yyline, yytext());}
"TRANSLATION" {return new Symbol(sym.TRANSLATION, yycolumn, yyline, yytext());}
"TRIM" {return new Symbol(sym.TRIM, yycolumn, yyline, yytext());}
"TRUE" {return new Symbol(sym.TRUE, yycolumn, yyline, yytext());}
"UNKNOWN" {return new Symbol(sym.UNKNOWN, yycolumn, yyline, yytext());}
"UPPER" {return new Symbol(sym.UPPER, yycolumn, yyline, yytext());}
"USAGE" {return new Symbol(sym.USAGE, yycolumn, yyline, yytext());}
"USING" {return new Symbol(sym.USING, yycolumn, yyline, yytext());}
"VALUE" {return new Symbol(sym.VALUE, yycolumn, yyline, yytext());}
"VARCHAR" {return new Symbol(sym.VARCHAR, yycolumn, yyline, yytext());}
"NVARCHAR" {return new Symbol(sym.NVARCHAR, yycolumn, yyline, yytext());}
"MONEY" {return new Symbol(sym.MONEY, yycolumn, yyline, yytext());}
"WHENEVER" {return new Symbol(sym.WHENEVER, yycolumn, yyline, yytext());}
"WORK" {return new Symbol(sym.WORK, yycolumn, yyline, yytext());}
"WRITE" {return new Symbol(sym.WRITE, yycolumn, yyline, yytext());}
"YEAR" {return new Symbol(sym.YEAR, yycolumn, yyline, yytext());}
"ZONE" {return new Symbol(sym.ZONE, yycolumn, yyline, yytext());}
"READONLY" {return new Symbol(sym.READONLY, yycolumn, yyline, yytext());}
"ENCRYPTION" {return new Symbol(sym.ENCRYPTION, yycolumn, yyline, yytext());}
"RETURNS" {return new Symbol(sym.RETURNS, yycolumn, yyline, yytext());}
"SCHEMABINDING" {return new Symbol(sym.SCHEMABINDING, yycolumn, yyline, yytext());}
"CALLED" {return new Symbol(sym.CALLED, yycolumn, yyline, yytext());}
"INLINE" {return new Symbol(sym.INLINE, yycolumn, yyline, yytext());}
"CALLER" {return new Symbol(sym.CALLER, yycolumn, yyline, yytext());}
"SELF" {return new Symbol(sym.SELF, yycolumn, yyline, yytext());}
"OWNER" {return new Symbol(sym.OWNER, yycolumn, yyline, yytext());}
"RECOMPILE" {return new Symbol(sym.RECOMPILE, yycolumn, yyline, yytext());}
"MARK" {return new Symbol(sym.MARK, yycolumn, yyline, yytext());}
"FORWARD_ONLY" {return new Symbol(sym.FORWARD_ONLY, yycolumn, yyline, yytext());}
"STATIC" {return new Symbol(sym.STATIC, yycolumn, yyline, yytext());}
"KEYSET" {return new Symbol(sym.KEYSET, yycolumn, yyline, yytext());}
"DYNAMIC" {return new Symbol(sym.DYNAMIC, yycolumn, yyline, yytext());}
"FAST_FORWARD" {return new Symbol(sym.FAST_FORWARD, yycolumn, yyline, yytext());}
"READ_ONLY" {return new Symbol(sym.READ_ONLY, yycolumn, yyline, yytext());}
"SCROLL_LOCKS" {return new Symbol(sym.SCROLL_LOCKS, yycolumn, yyline, yytext());}
"OPTIMISTIC" {return new Symbol(sym.OPTIMISTIC, yycolumn, yyline, yytext());}
"TYPE_WARNING" {return new Symbol(sym.TYPE_WARNING, yycolumn, yyline, yytext());}
"MAXSIZE" {return new Symbol(sym.MAXSIZE, yycolumn, yyline, yytext());}
"UNLIMITED" {return new Symbol(sym.UNLIMITED, yycolumn, yyline, yytext());}
"FILEGROWTH" {return new Symbol(sym.FILEGROWTH, yycolumn, yyline, yytext());}
"KB" {return new Symbol(sym.KB, yycolumn, yyline, yytext());}
"MB" {return new Symbol(sym.MB, yycolumn, yyline, yytext());}
"GB" {return new Symbol(sym.GB, yycolumn, yyline, yytext());}
"TB" {return new Symbol(sym.TB, yycolumn, yyline, yytext());}
(";" {WHITE}* "GO") {return new Symbol(sym.PYCGO, yycolumn, yyline, yytext());}

[a-zA-Z]({LETRA} | {DIGITO})* {return new Symbol(sym.IDENTIFICADOR, yycolumn, yyline, yytext());}


{WHITE}+ {/*Ignore*/}


{COMENTARIO}+ {/*Ignore*/}
{ERROR_COMENTARIO_MULTILINEA}+ {return new Symbol(sym.ERROR_COMENTARIO, yycolumn, yyline, yytext());}

({DIGITO})+ {return new Symbol(sym.CONSTANTE_ENTERA, yycolumn, yyline, yytext());}
{DIGITO}+ "." {DIGITO}* ([E|e] [+,-]? {DIGITO}*)? {return new Symbol(sym.CONSTANTE_FLOTANTE, yycolumn, yyline, yytext());}
"'" {CADENAS} "'" {return new Symbol(sym.CONSTANTE_CADENA, yycolumn, yyline, yytext());}
[0 | 1 | NULL] {return new Symbol(sym.CONSTANTE_BOOLEANA, yycolumn, yyline, yytext());}

"'" {CADENAS} {return new Symbol(sym.ERROR_CADENA, yycolumn, yyline, yytext());}


"+" {return new Symbol(sym.SUMA, yycolumn, yyline, yytext());}
"-" {return new Symbol(sym.RESTA, yycolumn, yyline, yytext());}
"*" {return new Symbol(sym.MULTIPLICACION, yycolumn, yyline, yytext());}
"/" {return new Symbol(sym.DIVISION, yycolumn, yyline, yytext());}
"%" {return new Symbol(sym.MODULAR, yycolumn, yyline, yytext());}
"<" {return new Symbol(sym.LT, yycolumn, yyline, yytext());}
"<=" {return new Symbol(sym.ELT, yycolumn, yyline, yytext());}
">" {return new Symbol(sym.GT, yycolumn, yyline, yytext());}
">=" {return new Symbol(sym.EGT, yycolumn, yyline, yytext());}
"=" {return new Symbol(sym.ASIGNACION, yycolumn, yyline, yytext());}
"==" {return new Symbol(sym.COMPARACION, yycolumn, yyline, yytext());}
"!=" {return new Symbol(sym.DIFERENCIA, yycolumn, yyline, yytext());}
"&&" {return new Symbol(sym.AMPERSAND, yycolumn, yyline, yytext());}
"||" {return new Symbol(sym.PIPE, yycolumn, yyline, yytext());}
"!" {return new Symbol(sym.ADMIRACION, yycolumn, yyline, yytext());}
";" {return new Symbol(sym.PYC, yycolumn, yyline, yytext());}
"," {return new Symbol(sym.COMA, yycolumn, yyline, yytext());}
"." {return new Symbol(sym.PUNTO, yycolumn, yyline, yytext());}
"[" {return new Symbol(sym.CORCHETE_APERTURA, yycolumn, yyline, yytext());}
"]" {return new Symbol(sym.CORCHETE_CIERRE, yycolumn, yyline, yytext());}
"(" {return new Symbol(sym.PARENTESIS_APERTURA, yycolumn, yyline, yytext());}
")" {return new Symbol(sym.PARENTESIS_CIERRE, yycolumn, yyline, yytext());}
"{" {return new Symbol(sym.LLAVE_APERTURA, yycolumn, yyline, yytext());}
"}" {return new Symbol(sym.LLAVE_CIERRE, yycolumn, yyline, yytext());}
"[]" {return new Symbol(sym.CORCHETES, yycolumn, yyline, yytext());}
"()" {return new Symbol(sym.PARENTESIS, yycolumn, yyline, yytext());}
"{}" {return new Symbol(sym.LLAVES, yycolumn, yyline, yytext());}
"@" {return new Symbol(sym.ARROBA, yycolumn, yyline, yytext());}
"#" {return new Symbol(sym.NUMERAL, yycolumn, yyline, yytext());}
"##" {return new Symbol(sym.NUMERALES, yycolumn, yyline, yytext());}


 . {return new Symbol(sym.ERROR, yycolumn, yyline, yytext());}