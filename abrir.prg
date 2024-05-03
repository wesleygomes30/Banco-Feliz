FUNCTION abrir

    LOCAL oConta := BancoFeliz():new()
    LOCAL cCadastro := Cadastro():new()
    LOCAL saldoInicial := 0
    LOCAL conta

    cls

    ? "Bem Vindo ao Banco Feliz"

        ACCEPT "Digite o seu nome: " TO cNome
        ACCEPT  "Digite seu Sobrenome: "  TO cSobreNome
        ACCEPT  "Digite a sua data de nascimento: "  TO cNascimento
        ACCEPT  "Digite o seu número de telefone: "  TO cTelefone
        ACCEPT  "Digite o seu endereco: "  TO cEndereco
        ACCEPT  "Digite o complemento: "  TO cComplemento
        ACCEPT  "Digite o seu CEP: " TO cCEP

    @01, 01 SAY "Qual o valor deseja depositar para abrir a conta? " GET saldoInicial
    READ
    conta := oConta:Inicializar(saldoInicial)

    ? "Conta a aberta com sucesso!"
    ? "Seu saldo atual é de: R$ ", oConta:VerSaldo()



RETURN