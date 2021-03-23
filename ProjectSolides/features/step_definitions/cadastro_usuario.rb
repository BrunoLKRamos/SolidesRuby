Quando('crio um novo usuario') do
    login.clicar_para_registrar()

    cadastroUsuario.cadastrar_novo_usuario(
        Faker::Internet.email,
        Faker::CPF.numeric,
        'Solides01',
        'Solides01'
    )
end