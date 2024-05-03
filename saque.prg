FUNCTION saque

    LOCAL oConta := BancoFeliz():new()
    LOCAL vSaque := 0
    
    ? "O saldo atual da sua conta é R$ ", oConta:VerSaldo()
    INPUT "Informe o valor a ser sacado R$ " to vSaque
    READ
    IF oConta:Retirar(vSaque)
    
    ? "O valor sacado foi de R$", vSaque
    ? "Saldo atual na conta: R$", oConta:VerSaldo()
    INKEY (0)
    ELSE 
        
    ENDIF
    principal()