
;Programa que transforma um n�mero decimal
;a bin�rio
SECTION TEXT
INPUT OLD_DATA
LOAD OLD_DATA
L1: DIV DOIS ;4
STORE  NEW_DATA
MULT DOIS
STORE TMP_DATA
LOAD OLD_DATA
SUB TMP_DATA
STORE TMP_DATA
OUTPUT TMP_DATA
COPY NEW_DATA, OLD_DATA
LOAD OLD_DATA
JMPP L1
STOP
SECTION DATA
DOIS: CONST 2 ;28
OLD_DATA: SPACE ;29
NEW_DATA: SPACE ;30
TMP_DATA: SPACE ;31
