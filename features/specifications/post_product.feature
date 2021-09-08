#language: pt

Funcionalidade: Testes de microsserviço
Eu como usuario do sistema
Quero realizar requisiçoes ao MS

@create_product
Cenário: Criacao de produto
Dado que eu faça uma request do tipo post para criar um produto
Então a api deve me retornar o status de sucesso no cadastro do produto