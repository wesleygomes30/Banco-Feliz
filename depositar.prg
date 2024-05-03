FUNCTION depositar

    LOCAL oConta := BancoFeliz():new()
    LOCAL vDeposito := 0
    
    INPUT "Informe o valor a ser depositado: " to vDeposito

    oConta:Depositar(vDeposito)
    
    ? "O valor depositado foi de R$", vDeposito
    ? "Saldo atual na conta: R$", oConta:VerSaldo()