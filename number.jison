%lex
%%

\s+                   /* skip whitespace */
"55"                  return 'codigo'
[0-9]                 return 'digito'
"("                   return '('
")"                   return ')'
"-"                   return '-'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex


%% 

start
    : telefone EOF
        {return "numero valido";}
    ;

telefone 
    : codigo "(" digito digito ")" celular
    ;
        
celular
    : digito digito digito digito '-' digito digito digito    digito
   
    ;
