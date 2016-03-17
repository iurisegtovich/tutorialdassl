SUBROUTINE RES(T,Y,YPRIME,DELTA,IRES,RPAR,IPAR)
    !DECLARAÇÃO DE VARIÁVEIS PARA A DASSL
    DOUBLE PRECISION T, Y(2), YPRIME(2), DELTA(2), RPAR(3)
    INTEGER IRES,IPAR(1)
    !DECLARAÇÃO DE VARIÁVEIS DO PROBLEMA
    DOUBLE PRECISION H, FO, ST, KV, FI
    DOUBLE PRECISION HPRIME,FOPRIME
    !RELITERANDO AS VARIÁVEIS DA DASSL 
    !N.A. (APENAS PARA FINS DIDÁTICOS. É RECOMENDÁVEL TRABALHAR DIRETAMENTE COM Y,YPRIME, IPAR E RPAR)
    H=Y(1)
    HPRIME=YPRIME(1)
    FO=Y(2) !FOPRIME NÃO SERÁ UTILIZADO NAS EQUAÇÕES, ENTÃO PODE SER IGNORADO
    ST=RPAR(1)
    KV=RPAR(2)
    FI=RPAR(3) 
    !------------------------------------------
    !FORMULAÇÃO DO PROBLEMA
    !AQUI DEVEM SER INSERIDAS AS EQUAÇÕES DIFERENCIAIS E ALGÉBRICAS
    !ELAS DEVEM ESTAR NA FORMA DELTA(I)=F(Y,Y',t)
    !e.g. PARA UMA VARIÁVEL 'F' GENÉRICA TEMOS A EQUAÇÃO: dF/dt=F -> DELTA=dF/dt-F
    !     PARA A DASSL F=Y, LOGO, A EQUAÇÃO DEVE SER ESCRITA EM FORTRAN COMO: DELTA(I)=YPRIME(I)-Y(I) PARA I=1,...,NEQ
    DELTA(1)=-ST*HPRIME+FI-FO !EQUAÇÃO DIFERENCIAL
    DELTA(2)=-FO+KV*H  !EQUAÇÃO ALGÉBRICA
    
END SUBROUTINE
