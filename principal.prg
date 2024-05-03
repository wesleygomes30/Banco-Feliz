FUNCTION principal
    LOCAL opcao := 0

    hb_cdpSelect("UTF8")

    cls

    ? "Bem-vindo ao Banco Feliz!"
    
    ? "[1] - Abrir conta" 
    ? "[2] - Saque" 
    ? "[3] - Depositar" 
    ? "[4] - Saldo" 
    ? "[5] - Sair" 

    INPUT "Escolha a opção desejada:" TO opcao

    DO CASE 
    CASE(opcao == 1)
        abrir()
    CASE(opcao == 2)
        saque()
    CASE(opcao == 3)
        depositar()
    CASE(opcao == 4)
        saldo()
    CASE(opcao == 5)
        ?"Obrigado, até logo!"
    OTHERWISE 
        ? "Valor inválido"
    ENDCASE



RETURN