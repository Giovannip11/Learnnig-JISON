/* Não faço ideia pq com 2 TEXT funciona
 */

/* lexical grammar */
%lex
%%

\s+
[0-9A-Za-z_.]+        return 'TEXT'      
[A-Za-z0-9_.]+        return 'TEXT'
"("                   return '('
")"                   return ')'
"@"                   return 'arroba'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex


%% 

start
    : email EOF
        {return "email valido"}
    ;

email 
     : "(" TEXT arroba TEXT ")"
     ;

        
