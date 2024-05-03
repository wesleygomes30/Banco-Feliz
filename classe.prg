#include "hbclass.ch"

    CLASS BancoFeliz

        DATA saldo INIT 0  // Define a propriedade 'saldo' e inicializa com 0

        METHOD Inicializar() // Método para inicializar o saldo
        METHOD Depositar()  // Método para depositar dinheiro na conta
        METHOD Retirar()   // Método para retirar dinheiro da conta
        METHOD VerSaldo() // Método para retornar o saldo atual   
    
        ENDCLASS

    CLASS Cadastro

        DATA cNome 
        Data cSobreNome 
        Data cNascimento 
        Data cTelefone 
        Data cEndereco 
        Data cComplemento 
        Data cCEP 

    ENDCLASS

        METHOD New() Class Cadastro

            CLS

        ACCEPT  "Digite seu Nome: "  TO ::cNome
        ACCEPT  "Digite seu Sobrenome: "  TO ::cSobreNome
        ACCEPT  "Digite a sua data de nascimento: "  TO ::cNascimento
        ACCEPT  "Digite o seu número de telefone "  TO ::cTelefone
        ACCEPT  "Digite o seu endereco: "  TO ::cEndereco
        ACCEPT  "Digite o complemento: "  TO ::cComplemento
        ACCEPT  "Digite o seu CEP: " TO ::cCep
          
        RETURN 
    
    METHOD Inicializar(saldoInicial) CLASS BancoFeliz
        ::saldo := saldoInicial
    RETURN self

    METHOD Depositar(valor) CLASS BancoFeliz
        ::saldo =+ valor
    RETURN self

    METHOD Retirar(valor) CLASS BancoFeliz
        IF ::saldo >= valor
            ::saldo =- valor
            RETURN .T.
        ELSE
            ? "Saldo insuficiente para a retirada."
            INKEY (0)
            RETURN .F.
        ENDIF 

    METHOD VerSaldo() CLASS BancoFeliz
    RETURN ::saldo
    
    
