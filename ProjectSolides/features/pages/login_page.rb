class LoginPage < SitePrism::Page
    element :campo_usuario,             'input[name="user"]'
    element :campo_senha,               '.sc-hrWEMg.hasios input[type="password"]'
    element :botao_logar,               'button[type="Submit"]'
    element :link_registrar,             '[Id="register"]'

    def logar_candidato(usuario, senha)
        campo_usuario.set       usuario
        campo_senha.set         senha
        botao_logar.click
    end  

    def clicar_para_registrar()
        link_registrar.click
    end
end