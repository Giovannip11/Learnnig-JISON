/* lexical grammar */
%lex
%%

[0-9A-Za-z_.]+        return 'TEXT'      
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

        
