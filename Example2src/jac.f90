!O FORNECIMENTO DE UMA SUBROTINA PARA CALCULO DA JACOBIANA E NECESSARIO
!POIS A DASSL REQUER LINKAR ESSA ROTINA AO EXECUTÁVEL INDEPENDENTEMENTE DA INTENÇÃO DE USO
!QUE É DEFINIDA EM UMA DAS VARIÁVEIS INFO DELA
SUBROUTINE JAC(T,Y,YPRIME,PD,CJ,RPAR,IPAR)
    DOUBLE PRECISION T, Y(*), PD(*), CJ, YPRIME(*), RPAR(*)
    INTEGER IPAR(*)
!NO CASO DE USAR INFO INDICANDO QUE ELA NÃO VAI SER CHAMADA
!ELA DEVE SER DECLARADA AQUI MAS PODE FICAR SEM IMPLEMENTAÇÃO
END SUBROUTINE