/* Terminar em casa, ta dando bosta
 */

/* lexical grammar */
%lex
%%

\s+                   
[A-Za-z0-9_.]+         return 'TEXT';
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
     : "(" TEXT "@" TEXT ")" 
    ;
        
