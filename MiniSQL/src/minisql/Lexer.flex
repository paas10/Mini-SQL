package minisql;
import static minisql.Token.*;
%%
%class Lexer
%line
%column
%type Token
L = [a-zA-Z]
l = [a-zA-Z_]
D = [0-9]
O = ["+""-""*""/""%""<""<="">"">=""=""==""!""&&""||"","".""[""]""("")""{""}""[]""()""{}""@""#""##"]
WHITE = [ \t\r\n]
%{
public String lexeme;
public int line;
public int column;
%}
%%
{WHITE} {/*Ignore*/}
("--")([^\n])* {/*Ignore*/}
(("/*")([^*])+~("*/")) {/*Ignore*/}
("/*")([^\n])* {line=yyline; column=yycolumn; lexeme=yytext(); return Error_Comentario;}
(("'")([^\n'])*("'")) {line=yyline; column=yycolumn; lexeme=yytext(); return String;}
(("'")([^\n'])*) {line=yyline; column=yycolumn; lexeme=yytext(); return Error_String;}
((ABSOLUTE)|(ACTION)|(ADA)|(ADD)|(ALL)|(ALLOCATE)|(AND)|(ANY)|(ARE)|(AS)|(ASC)|(ASSERTION)|(AT)|(AUTHORIZATION)|(AVG)|(BACKUP)|(BEGIN)|(BETWEEN)|(BIT_LENGTH)|(BOTH)|(BREAK)|(BROWSE)|(BULK)|(BY)|(CASCADE)|(CASCADED)|(CASE)|(CAST)|(CATALOG)|(CHAR_LENGTH)|(CHARACTER)|(CHARACTER_LENGTH)|(CHECK)|(CHECKPOINT)|(CLOSE)|(CLUSTERED)|(COALESCE)|(COLLATE)|(COLLATION)|(COLUMN)|(COMMIT)|(COMPUTE)|(CONNECT)|(CONNECTION)|(CONSTRAINT)|(CONSTRAINTS)|(CONTAINS)|(CONTAINSTABLE)|(CONTINUE)|(CONVERT)|(CORRESPONDING)|(COUNT)|(CROSS)|(CURRENT)|(CURRENT_DATE)|(CURRENT_TIME)|(CURRENT_TIMESTAMP)|(CURRENT_USER)|(DAY)|(DBCC)|(DEALLOCATE)|(DEC)|(DECLARE)|(DEFAULT)|(DEFERRABLE)|(DEFERRED)|(DENY)|(DESC)|(DESCRIBE)|(DESCRIPTOR)|(DIAGNOSTICS)|(DISCONNECT)|(DISK)|(DISTINCT)|(DISTRIBUTED)|(DOMAIN)|(DUMP)|(ELSE)|(END)|(END-EXEC)|(ERRLVL)|(ESCAPE)|(EXCEPT)|(EXCEPTION)|(EXEC)|(EXECUTE)|(EXIT)|(EXTERNAL)|(EXTRACT)|(FALSE)|(FETCH)|(FILE)|(FILLFACTOR)|(FIRST)|(FOR)|(FOREIGN)|(FORTRAN)|(FOUND)|(FREETEXT)|(FREETEXTTABLE)|(FROM)|(FULL)|(FUNCTION)|(GET)|(GLOBAL)|(GOTO)|(GRANT)|(GROUP)|(HAVING)|(HOLDLOCK)|(HOUR)|(IDENTITY)|(IDENTITY_INSERT)|(IDENTITYCOL)|(IMMEDIATE)|(IN)|(INCLUDE)|(INDICATOR)|(INITIALLY)|(INNER)|(INPUT)|(INSENSITIVE)|(INTERSECT)|(INTERVAL)|(INTO)|(IS)|(ISOLATION)|(JOIN)|(KEY)|(KILL)|(LANGUAGE)|(LAST)|(LEADING)|(LEFT)|(LEVEL)|(LIKE)|(LINENO)|(LOAD)|(LOCAL)|(LOWER)|(MATCH)|(MAX)|(MERGE)|(MIN)|(MINUTE)|(MODULE)|(MONTH)|(NAMES)|(NATIONAL)|(NATURAL)|(NEXT)|(NO)|(NOCHECK)|(NONCLUSTERED)|(NONE)|(NOT)|(NULL)|(NULLIF)|(OCTET_LENGTH)|(OF)|(OFF)|(OFFSETS)|(ONLY)|(OPEN)|(OPENDATASOURCE)|(OPENQUERY)|(OPENROWSET)|(OPENXML)|(OPTION)|(OR)|(ORDER)|(OUTER)|(OUTPUT)|(OVER)|(OVERLAPS)|(PAD)|(PARTIAL)|(PASCAL)|(PERCENT)|(PIVOT)|(PLAN)|(POSITION)|(PRECISION)|(PREPARE)|(PRESERVE)|(PRIMARY)|(PRINT)|(PRIOR)|(PRIVILEGES)|(PROC)|(PROCEDURE)|(PUBLIC)|(RAISERROR)|(READ)|(READTEXT)|(RECONFIGURE)|(REFERENCES)|(RELATIVE)|(REPLICATION)|(RESTORE)|(RESTRICT)|(RETURN)|(REVERT)|(REVOKE)|(RIGHT)|(ROLLBACK)|(ROWCOUNT)|(ROWGUIDCOL)|(ROWS)|(RULE)|(SAVE)|(SCHEMA)|(SCROLL)|(SECOND)|(SECTION)|(SECURITYAUDIT)|(SEMANTICKEYPHRASETABLE)|(SEMANTICSIMILARITYDETAILSTABLE)|(SEMANTICSIMILARITYTABLE)|(SESSION)|(SESSION_USER)|(SET)|(SETUSER)|(SHUTDOWN)|(SIZE)|(SOME)|(SPACE)|(SQL)|(SQLCA)|(SQLCODE)|(SQLERROR)|(SQLSTATE)|(SQLWARNING)|(STATISTICS)|(SUBSTRING)|(SUM)|(SYSTEM_USER)|(TABLESAMPLE)|(TEMPORARY)|(TEXTSIZE)|(THEN)|(TIMESTAMP)|(TIMEZONE_HOUR)|(TIMEZONE_MINUTE)|(TO)|(TOP)|(TRAILING)|(TRAN)|(TRANSACTION)|(TRANSLATE)|(TRANSLATION)|(TRIGGER)|(TRIM)|(TRUE)|(TRY_CONVERT)|(TSEQUAL)|(UNION)|(UNIQUE)|(UNKNOWN)|(UNPIVOT)|(UPDATETEXT)|(UPPER)|(USAGE)|(USE)|(USING)|(VALUE)|(VALUES)|(VARYING)|(WAITFOR)|(WHEN)|(WHENEVER)|(WHERE)|(WHILE)|(WITH)|(WITHIN GROUP)|(WORK)|(WRITE)|(WRITETEXT)|(YEAR)|(ZONE)) {line=yyline; column=yycolumn; lexeme=yytext(); return Palabra_Reservada;}

((SELECT)|(INSERT)|(DELETE)|(UPDATE)|(CREATE)|(ALTER)|(DROP)|(TRUNCATE)) {line=yyline; column=yycolumn; lexeme=yytext(); return InicialA;}

(IF) {line=yyline; column=yycolumn; lexeme=yytext(); return IF;}
(EXISTS) {line=yyline; column=yycolumn; lexeme=yytext(); return EXISTS;}
(";"|GO) {line=yyline; column=yycolumn; lexeme=yytext(); return Final;}
((VARCHAR)|(INTEGER)|(FLOAT)|(DATE)|(BIT)|(DOUBLE)|(CHAR)|(CURSOR)|(NCHAR)|(REAL)|(TIME)|(INT)|(DECIMAL)|(SMALLINT)|(NUMERIC)) {line=yyline; column=yycolumn; lexeme=yytext(); return TIPO;}

((TABLE)|(USER)|(DATABASE)|(VIEW)|(INDEX)) {line=yyline; column=yycolumn; lexeme=yytext(); return DropA;}
(ON) {line=yyline; column=yycolumn; lexeme=yytext(); return ON;}

(({L})({l}|{D})*) {line=yyline; column=yycolumn; lexeme=yytext(); return Identificador;}
(["+"|"-"])?({D})+ {line=yyline; column=yycolumn; lexeme=yytext(); return Int;}
(0|1|NULL) {line=yyline; column=yycolumn; lexeme=yytext(); return Bit;}
(["+"|"-"])?({D})+(".")({D})* {line=yyline; column=yycolumn; lexeme=yytext(); return Float;}
(["+"|"-"])?({D})+(".")({D})*("E"|"e")["+"]?({D})+ {line=yyline; column=yycolumn; lexeme=yytext(); return FloatExponencial;}
("!=") {line=yyline; column=yycolumn; lexeme=yytext(); return DIF;}
({O}) {line=yyline; column=yycolumn; lexeme=yytext(); return Operador;}
. {line=yyline; column=yycolumn; lexeme=yytext(); return ERROR;}