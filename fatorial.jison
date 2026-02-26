%lex
%%


[\d]+                 return 'NUMBER'
"!"                   return 'OPERATOR'
<<EOF>>               return 'EOF'
.                     return 'INVALID'

/lex
%start fact

%% 

fact
:     operation EOF
      {return $1;}
;
operation
:  'NUMBER' 'OPERATOR'

{$$=fact_op($1)}
;
%%
function fact_op(n){
var tot=1;
  for(var i=2;i<=n;++i) {
    tot*=i;
  }
  return tot;

}

 

        
