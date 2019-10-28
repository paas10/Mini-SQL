package minisql;
import java_cup.runtime.Symbol;
%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char

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
"ADD" {return new Symbol(sym.ADD,  yychar, yyline, yytext());}
"ALL" {return new Symbol(sym.ALL,  yychar, yyline, yytext());}
"ALTER" {return new Symbol(sym.ALTER,  yychar, yyline, yytext());}
"AND" {return new Symbol(sym.AND,  yychar, yyline, yytext());}
"ANY" {return new Symbol(sym.ANY,  yychar, yyline, yytext());}
"AS" {return new Symbol(sym.AS,  yychar, yyline, yytext());}
"ASC" {return new Symbol(sym.ASC,  yychar, yyline, yytext());}
"AUTHORIZATION" {return new Symbol(sym.AUTHORIZATION,  yychar, yyline, yytext());}
"BACKUP" {return new Symbol(sym.BACKUP,  yychar, yyline, yytext());}
"BEGIN" {return new Symbol(sym.BEGIN,  yychar, yyline, yytext());}
"BETWEEN" {return new Symbol(sym.BETWEEN,  yychar, yyline, yytext());}
"BREAK" {return new Symbol(sym.BREAK,  yychar, yyline, yytext());}
"BROWSE" {return new Symbol(sym.BROWSE,  yychar, yyline, yytext());}
"BULK" {return new Symbol(sym.BULK,  yychar, yyline, yytext());}
"BY" {return new Symbol(sym.BY,  yychar, yyline, yytext());}
"CASCADE" {return new Symbol(sym.CASCADE,  yychar, yyline, yytext());}
"CASE" {return new Symbol(sym.CASE,  yychar, yyline, yytext());}
"CHECK" {return new Symbol(sym.CHECK,  yychar, yyline, yytext());}
"CHECKPOINT" {return new Symbol(sym.CHECKPOINT,  yychar, yyline, yytext());}
"CLOSE" {return new Symbol(sym.CLOSE,  yychar, yyline, yytext());}
"CLUSTERED" {return new Symbol(sym.CLUSTERED,  yychar, yyline, yytext());}
"COALESCE" {return new Symbol(sym.COALESCE,  yychar, yyline, yytext());}
"COLLATE" {return new Symbol(sym.COLLATE,  yychar, yyline, yytext());}
"COLUMN" {return new Symbol(sym.COLUMN,  yychar, yyline, yytext());}
"COMMIT" {return new Symbol(sym.COMMIT,  yychar, yyline, yytext());}
"COMPUTE" {return new Symbol(sym.COMPUTE,  yychar, yyline, yytext());}
"CONSTRAINT" {return new Symbol(sym.CONSTRAINT,  yychar, yyline, yytext());}
"CONTAINS" {return new Symbol(sym.CONTAINS,  yychar, yyline, yytext());}
"CONTAINSTABLE" {return new Symbol(sym.CONTAINSTABLE,  yychar, yyline, yytext());}
"CONTINUE" {return new Symbol(sym.CONTINUE,  yychar, yyline, yytext());}
"CONVERT" {return new Symbol(sym.CONVERT,  yychar, yyline, yytext());}
"CREATE" {return new Symbol(sym.CREATE,  yychar, yyline, yytext());}
"CROSS" {return new Symbol(sym.CROSS,  yychar, yyline, yytext());}
"CURRENT" {return new Symbol(sym.CURRENT,  yychar, yyline, yytext());}
"CURRENT_DATE" {return new Symbol(sym.CURRENT_DATE,  yychar, yyline, yytext());}
"CURRENT_TIME" {return new Symbol(sym.CURRENT_TIME,  yychar, yyline, yytext());}
"CURRENT_TIMESTAMP" {return new Symbol(sym.CURRENT_TIMESTAMP,  yychar, yyline, yytext());}
"CURRENT_USER" {return new Symbol(sym.CURRENT_USER,  yychar, yyline, yytext());}
"CURSOR" {return new Symbol(sym.CURSOR,  yychar, yyline, yytext());}
"DATABASE" {return new Symbol(sym.DATABASE,  yychar, yyline, yytext());}
"DBCC" {return new Symbol(sym.DBCC,  yychar, yyline, yytext());}
"DEALLOCATE" {return new Symbol(sym.DEALLOCATE,  yychar, yyline, yytext());}
"DECLARE" {return new Symbol(sym.DECLARE,  yychar, yyline, yytext());}
"DEFAULT" {return new Symbol(sym.DEFAULT,  yychar, yyline, yytext());}
"DELETE" {return new Symbol(sym.DELETE,  yychar, yyline, yytext());}
"DENY" {return new Symbol(sym.DENY,  yychar, yyline, yytext());}
"DESC" {return new Symbol(sym.DESC,  yychar, yyline, yytext());}
"DISK" {return new Symbol(sym.DISK,  yychar, yyline, yytext());}
"DISTINCT" {return new Symbol(sym.DISTINCT,  yychar, yyline, yytext());}
"DISTRIBUTED" {return new Symbol(sym.DISTRIBUTED,  yychar, yyline, yytext());}
"DOUBLE" {return new Symbol(sym.DOUBLE,  yychar, yyline, yytext());}
"DROP" {return new Symbol(sym.DROP,  yychar, yyline, yytext());}
"DUMP" {return new Symbol(sym.DUMP,  yychar, yyline, yytext());}
"ELSE" {return new Symbol(sym.ELSE,  yychar, yyline, yytext());}
"END" {return new Symbol(sym.END,  yychar, yyline, yytext());}
"ERRLVL" {return new Symbol(sym.ERRLVL,  yychar, yyline, yytext());}
"ESCAPE" {return new Symbol(sym.ESCAPE,  yychar, yyline, yytext());}
"EXCEPT" {return new Symbol(sym.EXCEPT,  yychar, yyline, yytext());}
"EXEC" {return new Symbol(sym.EXEC,  yychar, yyline, yytext());}
"EXECUTE" {return new Symbol(sym.EXECUTE,  yychar, yyline, yytext());}
"EXISTS" {return new Symbol(sym.EXISTS,  yychar, yyline, yytext());}
"EXIT" {return new Symbol(sym.EXIT,  yychar, yyline, yytext());}
"EXTERNAL" {return new Symbol(sym.EXTERNAL,  yychar, yyline, yytext());}
"FETCH" {return new Symbol(sym.FETCH,  yychar, yyline, yytext());}
"FILE" {return new Symbol(sym.FILE,  yychar, yyline, yytext());}
"FILLFACTOR" {return new Symbol(sym.FILLFACTOR,  yychar, yyline, yytext());}
"FOR" {return new Symbol(sym.FOR,  yychar, yyline, yytext());}
"FOREIGN" {return new Symbol(sym.FOREIGN,  yychar, yyline, yytext());}
"FREETEXT" {return new Symbol(sym.FREETEXT,  yychar, yyline, yytext());}
"FREETEXTTABLE" {return new Symbol(sym.FREETEXTTABLE,  yychar, yyline, yytext());}
"FROM" {return new Symbol(sym.FROM,  yychar, yyline, yytext());}
"FULL" {return new Symbol(sym.FULL,  yychar, yyline, yytext());}
"FUNCTION" {return new Symbol(sym.FUNCTION,  yychar, yyline, yytext());}
"GOTO" {return new Symbol(sym.GOTO,  yychar, yyline, yytext());}
"GRANT" {return new Symbol(sym.GRANT,  yychar, yyline, yytext());}
"GROUP" {return new Symbol(sym.GROUP,  yychar, yyline, yytext());}
"HAVING" {return new Symbol(sym.HAVING,  yychar, yyline, yytext());}
"HOLDLOCK" {return new Symbol(sym.HOLDLOCK,  yychar, yyline, yytext());}
"IDENTITY" {return new Symbol(sym.IDENTITY,  yychar, yyline, yytext());}
"IDENTITY_INSERT" {return new Symbol(sym.IDENTITY_INSERT,  yychar, yyline, yytext());}
"IDENTITYCOL" {return new Symbol(sym.IDENTITYCOL,  yychar, yyline, yytext());}
"IF" {return new Symbol(sym.IF,  yychar, yyline, yytext());}
"IN" {return new Symbol(sym.IN,  yychar, yyline, yytext());}
"INDEX" {return new Symbol(sym.INDEX,  yychar, yyline, yytext());}
"INNER" {return new Symbol(sym.INNER,  yychar, yyline, yytext());}
"INSERT" {return new Symbol(sym.INSERT,  yychar, yyline, yytext());}
"INTERSECT" {return new Symbol(sym.INTERSECT,  yychar, yyline, yytext());}
"INTO" {return new Symbol(sym.INTO,  yychar, yyline, yytext());}
"IS" {return new Symbol(sym.IS,  yychar, yyline, yytext());}
"JOIN" {return new Symbol(sym.JOIN,  yychar, yyline, yytext());}
"KEY" {return new Symbol(sym.KEY,  yychar, yyline, yytext());}
"KILL" {return new Symbol(sym.KILL,  yychar, yyline, yytext());}
"LEFT" {return new Symbol(sym.LEFT,  yychar, yyline, yytext());}
"LIKE" {return new Symbol(sym.LIKE,  yychar, yyline, yytext());}
"LINENO" {return new Symbol(sym.LINENO,  yychar, yyline, yytext());}
"LOAD" {return new Symbol(sym.LOAD,  yychar, yyline, yytext());}
"MERGE" {return new Symbol(sym.MERGE,  yychar, yyline, yytext());}
"NATIONAL" {return new Symbol(sym.NATIONAL,  yychar, yyline, yytext());}
"NOCHECK" {return new Symbol(sym.NOCHECK,  yychar, yyline, yytext());}
"NONCLUSTERED" {return new Symbol(sym.NONCLUSTERED,  yychar, yyline, yytext());}
"NOT" {return new Symbol(sym.NOT,  yychar, yyline, yytext());}
"NULL" {return new Symbol(sym.NULL,  yychar, yyline, yytext());}
"NULLIF" {return new Symbol(sym.NULLIF,  yychar, yyline, yytext());}
"OF" {return new Symbol(sym.OF,  yychar, yyline, yytext());}
"OFF" {return new Symbol(sym.OFF,  yychar, yyline, yytext());}
"OFFSETS" {return new Symbol(sym.OFFSETS,  yychar, yyline, yytext());}
"ON" {return new Symbol(sym.ON,  yychar, yyline, yytext());}
"OPEN" {return new Symbol(sym.OPEN,  yychar, yyline, yytext());}
"OPENDATASOURCE" {return new Symbol(sym.OPENDATASOURCE,  yychar, yyline, yytext());}
"OPENQUERY" {return new Symbol(sym.OPENQUERY,  yychar, yyline, yytext());}
"OPENROWSET" {return new Symbol(sym.OPENROWSET,  yychar, yyline, yytext());}
"OPENXML" {return new Symbol(sym.OPENXML,  yychar, yyline, yytext());}
"OPTION" {return new Symbol(sym.OPTION,  yychar, yyline, yytext());}
"OR" {return new Symbol(sym.OR,  yychar, yyline, yytext());}
"ORDER" {return new Symbol(sym.ORDER,  yychar, yyline, yytext());}
"OUT" {return new Symbol(sym.OUT,  yychar, yyline, yytext());}
"OUTER" {return new Symbol(sym.OUTER,  yychar, yyline, yytext());}
"OVER" {return new Symbol(sym.OVER,  yychar, yyline, yytext());}
"PERCENT" {return new Symbol(sym.PERCENT,  yychar, yyline, yytext());}
"PIVOT" {return new Symbol(sym.PIVOT,  yychar, yyline, yytext());}
"PLAN" {return new Symbol(sym.PLAN,  yychar, yyline, yytext());}
"PRECISION" {return new Symbol(sym.PRECISION,  yychar, yyline, yytext());}
"PRIMARY" {return new Symbol(sym.PRIMARY,  yychar, yyline, yytext());}
"PRINT" {return new Symbol(sym.PRINT,  yychar, yyline, yytext());}
"PROC" {return new Symbol(sym.PROC,  yychar, yyline, yytext());}
"PROCEDURE" {return new Symbol(sym.PROCEDURE,  yychar, yyline, yytext());}
"PUBLIC" {return new Symbol(sym.PUBLIC,  yychar, yyline, yytext());}
"RAISERROR" {return new Symbol(sym.RAISERROR,  yychar, yyline, yytext());}
"READ" {return new Symbol(sym.READ,  yychar, yyline, yytext());}
"READTEXT" {return new Symbol(sym.READTEXT,  yychar, yyline, yytext());}
"RECONFIGURE" {return new Symbol(sym.RECONFIGURE,  yychar, yyline, yytext());}
"REFERENCES" {return new Symbol(sym.REFERENCES,  yychar, yyline, yytext());}
"REPLICATION" {return new Symbol(sym.REPLICATION,  yychar, yyline, yytext());}
"RESTORE" {return new Symbol(sym.RESTORE,  yychar, yyline, yytext());}
"RESTRICT" {return new Symbol(sym.RESTRICT,  yychar, yyline, yytext());}
"RETURN" {return new Symbol(sym.RETURN,  yychar, yyline, yytext());}
"REVERT" {return new Symbol(sym.REVERT,  yychar, yyline, yytext());}
"REVOKE" {return new Symbol(sym.REVOKE,  yychar, yyline, yytext());}
"RIGHT" {return new Symbol(sym.RIGHT,  yychar, yyline, yytext());}
"ROLLBACK" {return new Symbol(sym.ROLLBACK,  yychar, yyline, yytext());}
"ROWCOUNT" {return new Symbol(sym.ROWCOUNT,  yychar, yyline, yytext());}
"ROWGUIDCOL" {return new Symbol(sym.ROWGUIDCOL,  yychar, yyline, yytext());}
"RULE" {return new Symbol(sym.RULE,  yychar, yyline, yytext());}
"SAVE" {return new Symbol(sym.SAVE,  yychar, yyline, yytext());}
"SCHEMA" {return new Symbol(sym.SCHEMA,  yychar, yyline, yytext());}
"SECURITYAUDIT" {return new Symbol(sym.SECURITYAUDIT,  yychar, yyline, yytext());}
"SELECT" {return new Symbol(sym.SELECT,  yychar, yyline, yytext());}
"SEMANTICKEYPHRASETABLE" {return new Symbol(sym.SEMANTICKEYPHRASETABLE,  yychar, yyline, yytext());}
"SEMANTICSIMILARITYDETAILSTABLE" {return new Symbol(sym.SEMANTICSIMILARITYDETAILSTABLE,  yychar, yyline, yytext());}
"SEMANTICSIMILARITYTABLE" {return new Symbol(sym.SEMANTICSIMILARITYTABLE,  yychar, yyline, yytext());}
"SESSION_USER" {return new Symbol(sym.SESSION_USER,  yychar, yyline, yytext());}
"SET" {return new Symbol(sym.SET,  yychar, yyline, yytext());}
"SETUSER" {return new Symbol(sym.SETUSER,  yychar, yyline, yytext());}
"SHUTDOWN" {return new Symbol(sym.SHUTDOWN,  yychar, yyline, yytext());}
"SOME" {return new Symbol(sym.SOME,  yychar, yyline, yytext());}
"STATISTICS" {return new Symbol(sym.STATISTICS,  yychar, yyline, yytext());}
"SYSTEM_USER" {return new Symbol(sym.SYSTEM_USER,  yychar, yyline, yytext());}
"TABLE" {return new Symbol(sym.TABLE,  yychar, yyline, yytext());}
"TABLESAMPLE" {return new Symbol(sym.TABLESAMPLE,  yychar, yyline, yytext());}
"TEXTSIZE" {return new Symbol(sym.TEXTSIZE,  yychar, yyline, yytext());}
"THEN" {return new Symbol(sym.THEN,  yychar, yyline, yytext());}
"TO" {return new Symbol(sym.TO,  yychar, yyline, yytext());}
"TOP" {return new Symbol(sym.TOP,  yychar, yyline, yytext());}
"TRAN" {return new Symbol(sym.TRAN,  yychar, yyline, yytext());}
"TRANSACTION" {return new Symbol(sym.TRANSACTION,  yychar, yyline, yytext());}
"TRIGGER" {return new Symbol(sym.TRIGGER,  yychar, yyline, yytext());}
"TRUNCATE" {return new Symbol(sym.TRUNCATE,  yychar, yyline, yytext());}
"TRY_CONVERT" {return new Symbol(sym.TRY_CONVERT,  yychar, yyline, yytext());}
"TSEQUAL" {return new Symbol(sym.TSEQUAL,  yychar, yyline, yytext());}
"UNION" {return new Symbol(sym.UNION,  yychar, yyline, yytext());}
"UNIQUE" {return new Symbol(sym.UNIQUE,  yychar, yyline, yytext());}
"UNPIVOT" {return new Symbol(sym.UNPIVOT,  yychar, yyline, yytext());}
"UPDATE" {return new Symbol(sym.UPDATE,  yychar, yyline, yytext());}
"UPDATETEXT" {return new Symbol(sym.UPDATETEXT,  yychar, yyline, yytext());}
"USE" {return new Symbol(sym.USE,  yychar, yyline, yytext());}
"USER" {return new Symbol(sym.USER,  yychar, yyline, yytext());}
"VALUES" {return new Symbol(sym.VALUES,  yychar, yyline, yytext());}
"VARYING" {return new Symbol(sym.VARYING,  yychar, yyline, yytext());}
"VIEW" {return new Symbol(sym.VIEW,  yychar, yyline, yytext());}
"WAITFOR" {return new Symbol(sym.WAITFOR,  yychar, yyline, yytext());}
"WHEN" {return new Symbol(sym.WHEN,  yychar, yyline, yytext());}
"WHERE" {return new Symbol(sym.WHERE,  yychar, yyline, yytext());}
"WHILE" {return new Symbol(sym.WHILE,  yychar, yyline, yytext());}
"WITH" {return new Symbol(sym.WITH,  yychar, yyline, yytext());}
"WITHIN GROUP" {return new Symbol(sym.WITHIN_GROUP,  yychar, yyline, yytext());}
"WRITETEXT" {return new Symbol(sym.WRITETEXT,  yychar, yyline, yytext());}
"ABSOLUTE" {return new Symbol(sym.ABSOLUTE,  yychar, yyline, yytext());}
"ACTION" {return new Symbol(sym.ACTION,  yychar, yyline, yytext());}
"ADA" {return new Symbol(sym.ADA,  yychar, yyline, yytext());}
"ALLOCATE" {return new Symbol(sym.ALLOCATE,  yychar, yyline, yytext());}
"ARE" {return new Symbol(sym.ARE,  yychar, yyline, yytext());}
"ASSERTION" {return new Symbol(sym.ASSERTION,  yychar, yyline, yytext());}
"AT" {return new Symbol(sym.AT,  yychar, yyline, yytext());}
"AVG" {return new Symbol(sym.AVG,  yychar, yyline, yytext());}
"BIT" {return new Symbol(sym.BIT,  yychar, yyline, yytext());}
"BIT_LENGTH" {return new Symbol(sym.BIT_LENGTH,  yychar, yyline, yytext());}
"BOTH" {return new Symbol(sym.BOTH,  yychar, yyline, yytext());}
"CASCADED" {return new Symbol(sym.CASCADED,  yychar, yyline, yytext());}
"CAST" {return new Symbol(sym.CAST,  yychar, yyline, yytext());}
"CATALOG" {return new Symbol(sym.CATALOG,  yychar, yyline, yytext());}
"CHAR" {return new Symbol(sym.CHAR,  yychar, yyline, yytext());}
"CHAR_LENGTH" {return new Symbol(sym.CHAR_LENGTH,  yychar, yyline, yytext());}
"CHARACTER" {return new Symbol(sym.CHARACTER,  yychar, yyline, yytext());}
"CHARACTER_LENGTH" {return new Symbol(sym.CHARACTER_LENGTH,  yychar, yyline, yytext());}
"COLLATION" {return new Symbol(sym.COLLATION,  yychar, yyline, yytext());}
"CONNECT" {return new Symbol(sym.CONNECT,  yychar, yyline, yytext());}
"CONNECTION" {return new Symbol(sym.CONNECTION,  yychar, yyline, yytext());}
"CONSTRAINTS" {return new Symbol(sym.CONSTRAINTS,  yychar, yyline, yytext());}
"CORRESPONDING" {return new Symbol(sym.CORRESPONDING,  yychar, yyline, yytext());}
"COUNT" {return new Symbol(sym.COUNT,  yychar, yyline, yytext());}
"DATE" {return new Symbol(sym.DATE,  yychar, yyline, yytext());}
"DAY" {return new Symbol(sym.DAY,  yychar, yyline, yytext());}
"DEC" {return new Symbol(sym.DEC,  yychar, yyline, yytext());}
"DECIMAL" {return new Symbol(sym.DECIMAL,  yychar, yyline, yytext());}
"DEFERRABLE" {return new Symbol(sym.DEFERRABLE,  yychar, yyline, yytext());}
"DEFERRED" {return new Symbol(sym.DEFERRED,  yychar, yyline, yytext());}
"DESCRIBE" {return new Symbol(sym.DESCRIBE,  yychar, yyline, yytext());}
"DESCRIPTOR" {return new Symbol(sym.DESCRIPTOR,  yychar, yyline, yytext());}
"DIAGNOSTICS" {return new Symbol(sym.DIAGNOSTICS,  yychar, yyline, yytext());}
"DISCONNECT" {return new Symbol(sym.DISCONNECT,  yychar, yyline, yytext());}
"DOMAIN" {return new Symbol(sym.DOMAIN,  yychar, yyline, yytext());}
"END-EXEC" {return new Symbol(sym.END_EXEC,  yychar, yyline, yytext());}
"EXCEPTION" {return new Symbol(sym.EXCEPTION,  yychar, yyline, yytext());}
"EXTRACT" {return new Symbol(sym.EXTRACT,  yychar, yyline, yytext());}
"FALSE" {return new Symbol(sym.FALSE,  yychar, yyline, yytext());}
"FIRST" {return new Symbol(sym.FIRST,  yychar, yyline, yytext());}
"FLOAT" {return new Symbol(sym.FLOAT,  yychar, yyline, yytext());}
"FORTRAN" {return new Symbol(sym.FORTRAN,  yychar, yyline, yytext());}
"FOUND" {return new Symbol(sym.FOUND,  yychar, yyline, yytext());}
"GET" {return new Symbol(sym.GET,  yychar, yyline, yytext());}
"GLOBAL" {return new Symbol(sym.GLOBAL,  yychar, yyline, yytext());}
"GO" {return new Symbol(sym.GO,  yychar, yyline, yytext());}
"HOUR" {return new Symbol(sym.HOUR,  yychar, yyline, yytext());}
"IMMEDIATE" {return new Symbol(sym.IMMEDIATE,  yychar, yyline, yytext());}
"INCLUDE" {return new Symbol(sym.INCLUDE,  yychar, yyline, yytext());}
"INDICATOR" {return new Symbol(sym.INDICATOR,  yychar, yyline, yytext());}
"INITIALLY" {return new Symbol(sym.INITIALLY,  yychar, yyline, yytext());}
"INPUT" {return new Symbol(sym.INPUT,  yychar, yyline, yytext());}
"INSENSITIVE" {return new Symbol(sym.INSENSITIVE,  yychar, yyline, yytext());}
"INT" {return new Symbol(sym.INT,  yychar, yyline, yytext());}
"INTEGER" {return new Symbol(sym.INTEGER,  yychar, yyline, yytext());}
"INTERVAL" {return new Symbol(sym.INTERVAL,  yychar, yyline, yytext());}
"ISOLATION" {return new Symbol(sym.ISOLATION,  yychar, yyline, yytext());}
"LANGUAGE" {return new Symbol(sym.LANGUAGE,  yychar, yyline, yytext());}
"LAST" {return new Symbol(sym.LAST,  yychar, yyline, yytext());}
"LEADING" {return new Symbol(sym.LEADING,  yychar, yyline, yytext());}
"LEVEL" {return new Symbol(sym.LEVEL,  yychar, yyline, yytext());}
"LOCAL" {return new Symbol(sym.LOCAL,  yychar, yyline, yytext());}
"LOWER" {return new Symbol(sym.LOWER,  yychar, yyline, yytext());}
"MATCH" {return new Symbol(sym.MATCH,  yychar, yyline, yytext());}
"MAX" {return new Symbol(sym.MAX,  yychar, yyline, yytext());}
"MIN" {return new Symbol(sym.MIN,  yychar, yyline, yytext());}
"MINUTE" {return new Symbol(sym.MINUTE,  yychar, yyline, yytext());}
"MODULE" {return new Symbol(sym.MODULE,  yychar, yyline, yytext());}
"MONTH" {return new Symbol(sym.MONTH,  yychar, yyline, yytext());}
"NAME" {return new Symbol(sym.NAME,  yychar, yyline, yytext());}
"NAMES" {return new Symbol(sym.NAMES,  yychar, yyline, yytext());}
"FILENAME" {return new Symbol(sym.FILENAME,  yychar, yyline, yytext());}
"NATURAL" {return new Symbol(sym.NATURAL,  yychar, yyline, yytext());}
"NCHAR" {return new Symbol(sym.NCHAR,  yychar, yyline, yytext());}
"NEXT" {return new Symbol(sym.NEXT,  yychar, yyline, yytext());}
"NO" {return new Symbol(sym.NO,  yychar, yyline, yytext());}
"NONE" {return new Symbol(sym.NONE,  yychar, yyline, yytext());}
"NUMERIC" {return new Symbol(sym.NUMERIC,  yychar, yyline, yytext());}
"OCTET_LENGTH" {return new Symbol(sym.OCTET_LENGTH,  yychar, yyline, yytext());}
"ONLY" {return new Symbol(sym.ONLY,  yychar, yyline, yytext());}
"OUTPUT" {return new Symbol(sym.OUTPUT,  yychar, yyline, yytext());}
"OVERLAPS" {return new Symbol(sym.OVERLAPS,  yychar, yyline, yytext());}
"PAD" {return new Symbol(sym.PAD,  yychar, yyline, yytext());}
"PARTIAL" {return new Symbol(sym.PARTIAL,  yychar, yyline, yytext());}
"PASCAL" {return new Symbol(sym.PASCAL,  yychar, yyline, yytext());}
"POSITION" {return new Symbol(sym.POSITION,  yychar, yyline, yytext());}
"PREPARE" {return new Symbol(sym.PREPARE,  yychar, yyline, yytext());}
"PRESERVE" {return new Symbol(sym.PRESERVE,  yychar, yyline, yytext());}
"PRIOR" {return new Symbol(sym.PRIOR,  yychar, yyline, yytext());}
"PRIVILEGES" {return new Symbol(sym.PRIVILEGES,  yychar, yyline, yytext());}
"REAL" {return new Symbol(sym.REAL,  yychar, yyline, yytext());}
"RELATIVE" {return new Symbol(sym.RELATIVE,  yychar, yyline, yytext());}
"ROWS" {return new Symbol(sym.ROWS,  yychar, yyline, yytext());}
"SCROLL" {return new Symbol(sym.SCROLL,  yychar, yyline, yytext());}
"SECOND" {return new Symbol(sym.SECOND,  yychar, yyline, yytext());}
"SECTION" {return new Symbol(sym.SECTION,  yychar, yyline, yytext());}
"SESSION" {return new Symbol(sym.SESSION,  yychar, yyline, yytext());}
"SIZE" {return new Symbol(sym.SIZE,  yychar, yyline, yytext());}
"SMALLINT" {return new Symbol(sym.SMALLINT,  yychar, yyline, yytext());}
"SPACE" {return new Symbol(sym.SPACE,  yychar, yyline, yytext());}
"SQL" {return new Symbol(sym.SQL,  yychar, yyline, yytext());}
"SQLCA" {return new Symbol(sym.SQLCA,  yychar, yyline, yytext());}
"SQLCODE" {return new Symbol(sym.SQLCODE,  yychar, yyline, yytext());}
"SQLERROR" {return new Symbol(sym.SQLERROR,  yychar, yyline, yytext());}
"SQLSTATE" {return new Symbol(sym.SQLSTATE,  yychar, yyline, yytext());}
"SQLWARNING" {return new Symbol(sym.SQLWARNING,  yychar, yyline, yytext());}
"SUBSTRING" {return new Symbol(sym.SUBSTRING,  yychar, yyline, yytext());}
"SUM" {return new Symbol(sym.SUM,  yychar, yyline, yytext());}
"TEMPORARY" {return new Symbol(sym.TEMPORARY,  yychar, yyline, yytext());}
"TIME" {return new Symbol(sym.TIME,  yychar, yyline, yytext());}
"TIMESTAMP" {return new Symbol(sym.TIMESTAMP,  yychar, yyline, yytext());}
"TIMEZONE_HOUR" {return new Symbol(sym.TIMEZONE_HOUR,  yychar, yyline, yytext());}
"TIMEZONE_MINUTE" {return new Symbol(sym.TIMEZONE_MINUTE,  yychar, yyline, yytext());}
"TRAILING" {return new Symbol(sym.TRAILING,  yychar, yyline, yytext());}
"TRANSLATE" {return new Symbol(sym.TRANSLATE,  yychar, yyline, yytext());}
"TRANSLATION" {return new Symbol(sym.TRANSLATION,  yychar, yyline, yytext());}
"TRIM" {return new Symbol(sym.TRIM,  yychar, yyline, yytext());}
"TRUE" {return new Symbol(sym.TRUE,  yychar, yyline, yytext());}
"UNKNOWN" {return new Symbol(sym.UNKNOWN,  yychar, yyline, yytext());}
"UPPER" {return new Symbol(sym.UPPER,  yychar, yyline, yytext());}
"USAGE" {return new Symbol(sym.USAGE,  yychar, yyline, yytext());}
"USING" {return new Symbol(sym.USING,  yychar, yyline, yytext());}
"VALUE" {return new Symbol(sym.VALUE,  yychar, yyline, yytext());}
"VARCHAR" {return new Symbol(sym.VARCHAR,  yychar, yyline, yytext());}
"WHENEVER" {return new Symbol(sym.WHENEVER,  yychar, yyline, yytext());}
"WORK" {return new Symbol(sym.WORK,  yychar, yyline, yytext());}
"WRITE" {return new Symbol(sym.WRITE,  yychar, yyline, yytext());}
"YEAR" {return new Symbol(sym.YEAR,  yychar, yyline, yytext());}
"ZONE" {return new Symbol(sym.ZONE,  yychar, yyline, yytext());}
"READONLY" {return new Symbol(sym.READONLY,  yychar, yyline, yytext());}
"ENCRYPTION" {return new Symbol(sym.ENCRYPTION,  yychar, yyline, yytext());}
"RETURNS" {return new Symbol(sym.RETURNS,  yychar, yyline, yytext());}
"SCHEMABINDING" {return new Symbol(sym.SCHEMABINDING,  yychar, yyline, yytext());}
"CALLED" {return new Symbol(sym.CALLED,  yychar, yyline, yytext());}
"INLINE" {return new Symbol(sym.INLINE,  yychar, yyline, yytext());}
"CALLER" {return new Symbol(sym.CALLER,  yychar, yyline, yytext());}
"SELF" {return new Symbol(sym.SELF,  yychar, yyline, yytext());}
"OWNER" {return new Symbol(sym.OWNER,  yychar, yyline, yytext());}
"RECOMPILE" {return new Symbol(sym.RECOMPILE,  yychar, yyline, yytext());}
"MARK" {return new Symbol(sym.MARK,  yychar, yyline, yytext());}
"FORWARD_ONLY" {return new Symbol(sym.FORWARD_ONLY,  yychar, yyline, yytext());}
"STATIC" {return new Symbol(sym.STATIC,  yychar, yyline, yytext());}
"KEYSET" {return new Symbol(sym.KEYSET,  yychar, yyline, yytext());}
"DYNAMIC" {return new Symbol(sym.DYNAMIC,  yychar, yyline, yytext());}
"FAST_FORWARD" {return new Symbol(sym.FAST_FORWARD,  yychar, yyline, yytext());}
"READ_ONLY" {return new Symbol(sym.READ_ONLY,  yychar, yyline, yytext());}
"SCROLL_LOCKS" {return new Symbol(sym.SCROLL_LOCKS,  yychar, yyline, yytext());}
"OPTIMISTIC" {return new Symbol(sym.OPTIMISTIC,  yychar, yyline, yytext());}
"TYPE_WARNING" {return new Symbol(sym.TYPE_WARNING,  yychar, yyline, yytext());}
"MAXSIZE" {return new Symbol(sym.MAXSIZE,  yychar, yyline, yytext());}
"UNLIMITED" {return new Symbol(sym.UNLIMITED,  yychar, yyline, yytext());}
"FILEGROWTH" {return new Symbol(sym.FILEGROWTH,  yychar, yyline, yytext());}
"KB" {return new Symbol(sym.KB,  yychar, yyline, yytext());}
"MB" {return new Symbol(sym.MB,  yychar, yyline, yytext());}
"GB" {return new Symbol(sym.GB,  yychar, yyline, yytext());}
"TB" {return new Symbol(sym.TB,  yychar, yyline, yytext());}

[a-zA-Z]({LETRA} | {DIGITO})* {return new Symbol(sym.ERROR_COMENTARIO, yychar, yyline, yytext());}


{WHITE}+ {/*Ignore*/}


{COMENTARIO}+ {/*Ignore*/}
{ERROR_COMENTARIO_MULTILINEA}+ {return new Symbol(sym.ERROR_COMENTARIO, yychar, yyline, yytext());}


[0 | 1 | NULL] {return new Symbol(sym.CONSTANTE_BOOLEANA, yychar, yyline, yytext());}
({DIGITO})+ {return new Symbol(sym.CONSTANTE_ENTERA, yychar, yyline, yytext());}
{DIGITO}+ "." {DIGITO}* ([E|e] [+,-]? {DIGITO}*)? {return new Symbol(sym.CONSTANTE_FLOTANTE, yychar, yyline, yytext());}
"'" {CADENAS} "'" {return new Symbol(sym.CONSTANTE_CADENA, yychar, yyline, yytext());}

"'" {CADENAS} {return new Symbol(sym.ERROR_CADENA, yychar, yyline, yytext());}


"+" {return new Symbol(sym.SUMA, yychar, yyline, yytext());}
"-" {return new Symbol(sym.RESTA, yychar, yyline, yytext());}
"*" {return new Symbol(sym.MULTIPLICACION, yychar, yyline, yytext());}
"/" {return new Symbol(sym.DIVISION, yychar, yyline, yytext());}
"%" {return new Symbol(sym.MODULAR, yychar, yyline, yytext());}
"<" {return new Symbol(sym.LT, yychar, yyline, yytext());}
"<=" {return new Symbol(sym.ELT, yychar, yyline, yytext());}
">" {return new Symbol(sym.GT, yychar, yyline, yytext());}
">=" {return new Symbol(sym.EGT, yychar, yyline, yytext());}
"=" {return new Symbol(sym.ASIGNACION, yychar, yyline, yytext());}
"==" {return new Symbol(sym.COMPARACION, yychar, yyline, yytext());}
"!=" {return new Symbol(sym.DIFERENCIA, yychar, yyline, yytext());}
"&&" {return new Symbol(sym.AMPERSAND, yychar, yyline, yytext());}
"||" {return new Symbol(sym.PIPE, yychar, yyline, yytext());}
"!" {return new Symbol(sym.ADMIRACION, yychar, yyline, yytext());}
";" {return new Symbol(sym.PYC, yychar, yyline, yytext());}
"," {return new Symbol(sym.COMA, yychar, yyline, yytext());}
"." {return new Symbol(sym.PUNTO, yychar, yyline, yytext());}
"[" {return new Symbol(sym.CORCHETE_APERTURA, yychar, yyline, yytext());}
"]" {return new Symbol(sym.CORCHETE_CIERRE, yychar, yyline, yytext());}
"(" {return new Symbol(sym.PARENTESIS_APERTURA, yychar, yyline, yytext());}
")" {return new Symbol(sym.PARENTESIS_CIERRE, yychar, yyline, yytext());}
"{" {return new Symbol(sym.LLAVE_APERTURA, yychar, yyline, yytext());}
"}" {return new Symbol(sym.LLAVE_CIERRE, yychar, yyline, yytext());}
"[]" {return new Symbol(sym.CORCHETES, yychar, yyline, yytext());}
"()" {return new Symbol(sym.PARENTESIS, yychar, yyline, yytext());}
"{}" {return new Symbol(sym.LLAVES, yychar, yyline, yytext());}
"@" {return new Symbol(sym.ARROBA, yychar, yyline, yytext());}
"#" {return new Symbol(sym.NUMERAL, yychar, yyline, yytext());}
"##" {return new Symbol(sym.NUMERALES, yychar, yyline, yytext());}


 . {return new Symbol(sym.ERROR, yychar, yyline, yytext());}