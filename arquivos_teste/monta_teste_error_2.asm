MOD_A: BEGIN ; begin sem end (tirar outros erros para ver)
SECTION TEXT
COPY ZERO,OLDER
COPY ONE,OLD
INPUT LIMIT
OUTPUT OLD
FRONT: LOAD OLDER
ADD OLD
STORE ONE ; modificao valor cte
DIV ZERO ; divisao por 0
SUB LIMIT
ADD R ; declaracao ausente
JMPP FINAL
OUTPUT NEW
OUTPUT VEC+4 ; endereco de memoria nao reservado
COPY OLD,OLDER
COPY NEW,OLD
JMP ZERO ; pulo para rotulo invalido
L: SPACE ; diretiva na sessao errada
FINAL: OUTPUT LIMIT
STOP
SECTION DATA
ZERO: CONST 0
ONE: CONST 1
OLDER: SPACE
OLD: SPACE
NEW: SPACE
LIMIT: SPACE
VEC: SPACE 2
