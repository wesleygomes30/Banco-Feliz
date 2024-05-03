FUNCTION saldo

LOCAL oConta := BancoFeliz():new()
LOCAL vSaldo := 0
local vDeposito := 0
LOCAL cResp1

? "Saldo atual na conta: R$", oConta:VerSaldo()

? "Deseja Depositar?"
ACCEPT "Responda (S/N): " TO cResp1 
cResp1 := UPPER( cResp1 ) 

IF ( cResp1 = "S" )  
INPUT "Informe o valor a ser depositado: " to vDeposito
? "Deposito efetuado com sucesso!"

oConta:Depositar(vDeposito)
    
    ? "O valor depositado foi de R$", vDeposito
    ? "Saldo atual na conta: R$", oConta:VerSaldo()
    ? "Obrigado!"
ELSE 
? "Obrigado, até a próxima." 
ENDIF 

INKEY (0)

principal()
