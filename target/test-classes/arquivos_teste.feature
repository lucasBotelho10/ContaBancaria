#Author: lucashbotelho@hotmail.com
#Keywords Summary : Conta, ClienteEspecial, saldo, novoSaldo, valor
#Feature: Cliente realiza saque de dinheiro como um cliente.
#Scenario: Cliente especial com saldo negativo
#Given: Um cliente especial com saldo atual de -200 reais.
#When: For solicitado um saque no valor de 100 reais.
#Then: deve efetuar o saque e atualizar o saldo da conta para -300 reais.
#Scenario Outline: Um cliente comum com saldo negativo.
#Given: Um cliente comum com saldo atual de -200 reais.
#When: solicitar um saque de 200 reais.
#Then: não deve efetuar o saque e deve retornar a mensagem Saldo Insuficiente. 
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Cliente faz saque de dinheiro Como um cliente,
eu gostaria de sacar dinheiro em caixa eletrônico,
 para que eu não tenha que esperar em uma fila do banco.

  @tag1
  Scenario: Cliente especial1 com saldo negativo
    Given um cliente especial com saldo atual de -200 reais
    When for solicitado um saque no valor de 100 reais
    Then deve efetuar o saque e atualizar o saldo da conta para -300 reais
    And check more outcomes

  @tag2
  Scenario Outline: Cliente comum com saldo negativo
    Given Um cliente comum com saldo atual de -200 reais
    When solicitar um saque de 200 reais
    Then não deve efetuar o saque e deve retornar a mensagem Saldo Insuficiente

