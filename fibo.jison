%lex
%%


[\d]+                 return 'NUMBER'
"?"                   return 'OPERATOR'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex
%start fibo

%% 

fibo
:     operation EOF
      {return $1;}
;
operation
:  NUMBER OPERATOR

{$$=op(Number($1))}
;
%%
function op(n){
  if (n <= 1) return n;

  let a = 0;
  let b = 1;
  let temp;

  for (let i = 2; i <= n; i++) {
    temp = a + b;
    a = b;
    b = temp;
  }

  return b;
}
 

        
