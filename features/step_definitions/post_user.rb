Dado('que eu faça uma request do tipo post para criar um usuario') do
  @user = @create_user.createUser
end
  
Então('a api deve me retornar o status de sucesso para criacao de usuario') do
  expect(@user.body).to include(/success|true/).twice
  expect(@user.code).to eql 200
end
  