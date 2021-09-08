#language: pt

Funcionalidade: Testes de microsserviço
Eu como usuario do sistema
Quero realizar requisiçoes ao MS

@create_user
Cenário: Criacao de usuario
Dado que eu faça uma request do tipo post para criar um usuario
Então a api deve me retornar o status de sucesso para criacao de usuario
