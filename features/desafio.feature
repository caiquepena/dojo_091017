#language: pt
#utf-8

Funcionalidade: Realizar o cadastro e alteração de funcionario no site ORANGEHRM 
Eu como usuário admin
Quero realizar o cadastro no site da ORANGEHRM 
E logo em seguida alterar o nome desse cadastro
Para ter um cadastro com a informação atualizada com sucesso

@desafio

Cenario: Validar cadastro e alteração no site da ORANGEHRM 
Dado que esteja logado no site da ORANGEHRM como admin
Quando clicar em PIM
E clicar em Add Employee
Então eu efetuo o cadastro do funcionario com sucesso
Quando eu clicar em Edit
E altero o campo First Name e Last Name
Então o cadastro é atualizado com sucesso