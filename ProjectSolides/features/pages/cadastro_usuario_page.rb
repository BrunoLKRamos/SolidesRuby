class CadastroUsuarioPage < SitePrism::Page
    element :campo_email,               'input[name="email"]'
    element :campo_cpf,                 'input[name="cpf"]'
    element :campo_senha,               '[name="password"] input[type="password"]'
    element :campo_confirmar_senha,     '[name="confirmPassword"] input[type="password"]'
    element :checkbox_termos_uso,       '.pure-material-checkbox'
    element :botao_cadastrar,           'button[type="Submit"]'

    def cadastrar_novo_usuario(email, cpf, senha, confirmaSenha)
        campo_email.set                 email
        campo_cpf.set                   cpf
        campo_senha.set                 senha
        campo_confirmar_senha.set       confirmaSenha
        checkbox_termos_uso.click
        botao_cadastrar.click
    end
end