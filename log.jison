%lex
%%

\s+                     /* skip whitespace */
[\d]+                   return 'NUMBER'
"log"                   return 'OPERATOR'
<<EOF>>                 return 'EOF'
.                       return 'INVALID'

/lex
%start log

%% 

log
:     operation EOF
      {return $1;}
;
operation
:  OPERATOR NUMBER

{$$=op(Number($2))}
;
%%
function op(n){
  return Math.log2(n);
}
 

        
