package minisql;
import static minisql.Token.*;
%%
%class Lexer
%line
%column
%type Token

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
public String lexeme;
public int line;
public int columni;
public int columnf;
%}

%%
"ADD" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ADD;}
"ALL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ALL;}
"ALTER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ALTER;}
"AND" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AND;}
"ANY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ANY;}
"AS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AS;}
"ASC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ASC;}
"AUTHORIZATION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AUTHORIZATION;}
"BACKUP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BACKUP;}
"BEGIN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BEGIN;}
"BETWEEN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BETWEEN;}
"BREAK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BREAK;}
"BROWSE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BROWSE;}
"BULK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BULK;}
"BY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BY;}
"CASCADE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CASCADE;}
"CASE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CASE;}
"CHECK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHECK;}
"CHECKPOINT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHECKPOINT;}
"CLOSE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CLOSE;}
"CLUSTERED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CLUSTERED;}
"COALESCE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COALESCE;}
"COLLATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COLLATE;}
"COLUMN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COLUMN;}
"COMMIT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COMMIT;}
"COMPUTE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COMPUTE;}
"CONSTRAINT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTRAINT;}
"CONTAINS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONTAINS;}
"CONTAINSTABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONTAINSTABLE;}
"CONTINUE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONTINUE;}
"CONVERT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONVERT;}
"CREATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CREATE;}
"CROSS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CROSS;}
"CURRENT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURRENT;}
"CURRENT_DATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURRENT_DATE;}
"CURRENT_TIME" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURRENT_TIME;}
"CURRENT_TIMESTAMP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURRENT_TIMESTAMP;}
"CURRENT_USER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURRENT_USER;}
"CURSOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CURSOR;}
"DATABASE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DATABASE;}
"DBCC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DBCC;}
"DEALLOCATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DEALLOCATE;}
"DECLARE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DECLARE;}
"DEFAULT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DEFAULT;}
"DELETE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DELETE;}
"DENY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DENY;}
"DESC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DESC;}
"DISK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DISK;}
"DISTINCT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DISTINCT;}
"DISTRIBUTED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DISTRIBUTED;}
"DOUBLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DOUBLE;}
"DROP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DROP;}
"DUMP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DUMP;}
"ELSE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ELSE;}
"END" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return END;}
"ERRLVL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ERRLVL;}
"ESCAPE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ESCAPE;}
"EXCEPT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXCEPT;}
"EXEC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXEC;}
"EXECUTE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXECUTE;}
"EXISTS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXISTS;}
"EXIT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXIT;}
"EXTERNAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXTERNAL;}
"FETCH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FETCH;}
"FILE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FILE;}
"FILLFACTOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FILLFACTOR;}
"FOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FOR;}
"FOREIGN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FOREIGN;}
"FREETEXT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FREETEXT;}
"FREETEXTTABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FREETEXTTABLE;}
"FROM" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FROM;}
"FULL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FULL;}
"FUNCTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FUNCTION;}
"GOTO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GOTO;}
"GRANT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GRANT;}
"GROUP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GROUP;}
"HAVING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return HAVING;}
"HOLDLOCK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return HOLDLOCK;}
"IDENTITY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IDENTITY;}
"IDENTITY_INSERT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IDENTITY_INSERT;}
"IDENTITYCOL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IDENTITYCOL;}
"IF" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IF;}
"IN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IN;}
"INDEX" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INDEX;}
"INNER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INNER;}
"INSERT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INSERT;}
"INTERSECT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INTERSECT;}
"INTO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INTO;}
"IS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IS;}
"JOIN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return JOIN;}
"KEY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return KEY;}
"KILL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return KILL;}
"LEFT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LEFT;}
"LIKE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LIKE;}
"LINENO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LINENO;}
"LOAD" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LOAD;}
"MERGE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MERGE;}
"NATIONAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NATIONAL;}
"NOCHECK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NOCHECK;}
"NONCLUSTERED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NONCLUSTERED;}
"NOT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NOT;}
"NULL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NULL;}
"NULLIF" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NULLIF;}
"OF" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OF;}
"OFF" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OFF;}
"OFFSETS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OFFSETS;}
"ON" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ON;}
"OPEN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPEN;}
"OPENDATASOURCE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPENDATASOURCE;}
"OPENQUERY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPENQUERY;}
"OPENROWSET" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPENROWSET;}
"OPENXML" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPENXML;}
"OPTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPTION;}
"OR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OR;}
"ORDER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ORDER;}
"OUT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OUT;}
"OUTER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OUTER;}
"OVER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OVER;}
"PERCENT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PERCENT;}
"PIVOT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PIVOT;}
"PLAN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PLAN;}
"PRECISION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRECISION;}
"PRIMARY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRIMARY;}
"PRINT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRINT;}
"PROC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PROC;}
"PROCEDURE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PROCEDURE;}
"PUBLIC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PUBLIC;}
"RAISERROR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RAISERROR;}
"READ" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return READ;}
"READTEXT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return READTEXT;}
"RECONFIGURE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RECONFIGURE;}
"REFERENCES" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return REFERENCES;}
"REPLICATION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return REPLICATION;}
"RESTORE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RESTORE;}
"RESTRICT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RESTRICT;}
"RETURN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RETURN;}
"REVERT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return REVERT;}
"REVOKE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return REVOKE;}
"RIGHT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RIGHT;}
"ROLLBACK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ROLLBACK;}
"ROWCOUNT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ROWCOUNT;}
"ROWGUIDCOL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ROWGUIDCOL;}
"RULE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RULE;}
"SAVE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SAVE;}
"SCHEMA" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SCHEMA;}
"SECURITYAUDIT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SECURITYAUDIT;}
"SELECT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SELECT;}
"SEMANTICKEYPHRASETABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SEMANTICKEYPHRASETABLE;}
"SEMANTICSIMILARITYDETAILSTABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SEMANTICSIMILARITYDETAILSTABLE;}
"SEMANTICSIMILARITYTABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SEMANTICSIMILARITYTABLE;}
"SESSION_USER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SESSION_USER;}
"SET" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SET;}
"SETUSER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SETUSER;}
"SHUTDOWN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SHUTDOWN;}
"SOME" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SOME;}
"STATISTICS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return STATISTICS;}
"SYSTEM_USER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SYSTEM_USER;}
"TABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TABLE;}
"TABLESAMPLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TABLESAMPLE;}
"TEXTSIZE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TEXTSIZE;}
"THEN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return THEN;}
"TO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TO;}
"TOP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TOP;}
"TRAN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRAN;}
"TRANSACTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRANSACTION;}
"TRIGGER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRIGGER;}
"TRUNCATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRUNCATE;}
"TRY_CONVERT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRY_CONVERT;}
"TSEQUAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TSEQUAL;}
"UNION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UNION;}
"UNIQUE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UNIQUE;}
"UNPIVOT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UNPIVOT;}
"UPDATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UPDATE;}
"UPDATETEXT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UPDATETEXT;}
"USE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return USE;}
"USER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return USER;}
"VALUES" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return VALUES;}
"VARYING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return VARYING;}
"VIEW" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return VIEW;}
"WAITFOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WAITFOR;}
"WHEN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WHEN;}
"WHERE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WHERE;}
"WHILE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WHILE;}
"WITH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WITH;}
"WITHIN GROUP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WITHIN_GROUP;}
"WRITETEXT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WRITETEXT;}
"ABSOLUTE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ABSOLUTE;}
"ACTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ACTION;}
"ADA" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ADA;}
"ALLOCATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ALLOCATE;}
"ARE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ARE;}
"ASSERTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ASSERTION;}
"AT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AT;}
"AVG" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AVG;}
"BIT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BIT;}
"BIT_LENGTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BIT_LENGTH;}
"BOTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return BOTH;}
"CASCADED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CASCADED;}
"CAST" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CAST;}
"CATALOG" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CATALOG;}
"CHAR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHAR;}
"CHAR_LENGTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHAR_LENGTH;}
"CHARACTER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHARACTER;}
"CHARACTER_LENGTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CHARACTER_LENGTH;}
"COLLATION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COLLATION;}
"CONNECT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONNECT;}
"CONNECTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONNECTION;}
"CONSTRAINTS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTRAINTS;}
"CORRESPONDING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CORRESPONDING;}
"COUNT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COUNT;}
"DATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DATE;}
"DAY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DAY;}
"DEC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DEC;}
"DECIMAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DECIMAL;}
"DEFERRABLE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DEFERRABLE;}
"DEFERRED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DEFERRED;}
"DESCRIBE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DESCRIBE;}
"DESCRIPTOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DESCRIPTOR;}
"DIAGNOSTICS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DIAGNOSTICS;}
"DISCONNECT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DISCONNECT;}
"DOMAIN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DOMAIN;}
"END-EXEC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return END_EXEC;}
"EXCEPTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXCEPTION;}
"EXTRACT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EXTRACT;}
"FALSE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FALSE;}
"FIRST" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FIRST;}
"FLOAT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FLOAT;}
"FORTRAN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FORTRAN;}
"FOUND" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FOUND;}
"GET" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GET;}
"GLOBAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GLOBAL;}
"GO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GO;}
"HOUR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return HOUR;}
"IMMEDIATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IMMEDIATE;}
"INCLUDE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INCLUDE;}
"INDICATOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INDICATOR;}
"INITIALLY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INITIALLY;}
"INPUT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INPUT;}
"INSENSITIVE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INSENSITIVE;}
"INT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INT;}
"INTEGER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INTEGER;}
"INTERVAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INTERVAL;}
"ISOLATION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ISOLATION;}
"LANGUAGE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LANGUAGE;}
"LAST" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LAST;}
"LEADING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LEADING;}
"LEVEL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LEVEL;}
"LOCAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LOCAL;}
"LOWER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LOWER;}
"MATCH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MATCH;}
"MAX" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MAX;}
"MIN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MIN;}
"MINUTE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MINUTE;}
"MODULE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MODULE;}
"MONTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MONTH;}
"NAME" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NAME;}
"NAMES" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NAMES;}
"FILENAME" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FILENAME;}
"NATURAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NATURAL;}
"NCHAR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NCHAR;}
"NEXT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NEXT;}
"NO" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NO;}
"NONE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NONE;}
"NUMERIC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NUMERIC;}
"OCTET_LENGTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OCTET_LENGTH;}
"ONLY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ONLY;}
"OUTPUT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OUTPUT;}
"OVERLAPS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OVERLAPS;}
"PAD" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PAD;}
"PARTIAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PARTIAL;}
"PASCAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PASCAL;}
"POSITION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return POSITION;}
"PREPARE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PREPARE;}
"PRESERVE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRESERVE;}
"PRIOR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRIOR;}
"PRIVILEGES" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PRIVILEGES;}
"REAL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return REAL;}
"RELATIVE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RELATIVE;}
"ROWS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ROWS;}
"SCROLL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SCROLL;}
"SECOND" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SECOND;}
"SECTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SECTION;}
"SESSION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SESSION;}
"SIZE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SIZE;}
"SMALLINT" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SMALLINT;}
"SPACE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SPACE;}
"SQL" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQL;}
"SQLCA" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQLCA;}
"SQLCODE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQLCODE;}
"SQLERROR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQLERROR;}
"SQLSTATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQLSTATE;}
"SQLWARNING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SQLWARNING;}
"SUBSTRING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SUBSTRING;}
"SUM" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SUM;}
"TEMPORARY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TEMPORARY;}
"TIME" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TIME;}
"TIMESTAMP" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TIMESTAMP;}
"TIMEZONE_HOUR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TIMEZONE_HOUR;}
"TIMEZONE_MINUTE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TIMEZONE_MINUTE;}
"TRAILING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRAILING;}
"TRANSLATE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRANSLATE;}
"TRANSLATION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRANSLATION;}
"TRIM" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRIM;}
"TRUE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TRUE;}
"UNKNOWN" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UNKNOWN;}
"UPPER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UPPER;}
"USAGE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return USAGE;}
"USING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return USING;}
"VALUE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return VALUE;}
"VARCHAR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return VARCHAR;}
"NVARCHAR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NVARCHAR;}
"MONEY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MONEY;}
"WHENEVER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WHENEVER;}
"WORK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WORK;}
"WRITE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return WRITE;}
"YEAR" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return YEAR;}
"ZONE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ZONE;}
"READONLY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return READONLY;}
"ENCRYPTION" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ENCRYPTION;}
"RETURNS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RETURNS;}
"SCHEMABINDING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SCHEMABINDING;}
"CALLED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CALLED;}
"INLINE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return INLINE;}
"CALLER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CALLER;}
"SELF" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SELF;}
"OWNER" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OWNER;}
"RECOMPILE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RECOMPILE;}
"MARK" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MARK;}
"FORWARD_ONLY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FORWARD_ONLY;}
"STATIC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return STATIC;}
"KEYSET" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return KEYSET;}
"DYNAMIC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DYNAMIC;}
"FAST_FORWARD" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FAST_FORWARD;}
"READ_ONLY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return READ_ONLY;}
"SCROLL_LOCKS" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SCROLL_LOCKS;}
"OPTIMISTIC" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return OPTIMISTIC;}
"TYPE_WARNING" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TYPE_WARNING;}
"MAXSIZE" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MAXSIZE;}
"UNLIMITED" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return UNLIMITED;}
"FILEGROWTH" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return FILEGROWTH;}
"DELAYED_DURABILITY" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DELAYED_DURABILITY;}
"KB" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return KB;}
"MB" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MB;}
"GB" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GB;}
"TB" {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return TB;}
(";" {WHITE}* "GO") {lexeme = yytext(); line = yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PYCGO;}


[a-zA-Z]({LETRA} | {DIGITO})* {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return IDENTIFICADOR;}

{WHITE}+ {/*Ignore*/}

{COMENTARIO}+ {/*Ignore*/}
{ERROR_COMENTARIO_MULTILINEA}+ {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ERROR_COMENTARIO;}

({DIGITO})+ {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTANTE_ENTERA;}
{DIGITO}+ "." {DIGITO}* ([E|e] [+,-]? {DIGITO}*)? {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTANTE_FLOTANTE;}
"'" {CADENAS} "'" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTANTE_CADENA;}
[0 | 1 | NULL] {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CONSTANTE_BOOLEANA;}

"'" {CADENAS} {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ERROR_CADENA;}


"+" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return SUMA;}
"-" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return RESTA;}
"*" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MULTIPLICACION;}
"/" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DIVISION;}
"%" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return MODULAR;}
"<" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LT;}
"<=" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ELT;}
">" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return GT;}
">=" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return EGT;}
"=" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ASIGNACION;}
"==" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COMPARACION;}
"!=" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return DIFERENCIA;}
"&&" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return AMPERSAND;}
"||" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PIPE;}
"!" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ADMIRACION;}
";" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PYC;}
"," {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return COMA;}
"." {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PUNTO;}
"[" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CORCHETE_APERTURA;}
"]" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CORCHETE_CIERRE;}
"(" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PARENTESIS_APERTURA;}
")" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PARENTESIS_CIERRE;}
"{" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LLAVE_APERTURA;}
"}" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LLAVE_CIERRE;}
"[]" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return CORCHETES;}
"()" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return PARENTESIS;}
"{}" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return LLAVES;}
"@" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ARROBA;}
"#" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NUMERAL;}
"##" {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return NUMERALES;}


 . {lexeme=yytext(); line=yyline; columni = yycolumn; columnf = yycolumn + yylength() -1; return ERROR;}