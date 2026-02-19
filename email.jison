/* Terminar em casa

 */

/* lexical grammar */
%lex
%%

\s+                   /* skip whitespace */
[\w]+("."[\d]+?)      return 'char'
"("                   return '('
")"                   return ')'
"@"                   return '@'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex


%% 

start
    : email EOF
        {return "email valido";}
    ;

email 
    : codigo "(" char char ")" celular
    ;
        
celular
    : 
   
    ;
