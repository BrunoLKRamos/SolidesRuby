class VagasPage < SitePrism::Page
    set_url('/')
    element :botao_candidatar_vaga,              'button[type="button"] .sc-brqgnP.fWtvbo'

    def candidatar_vaga()
        botao_candidatar_vaga.click
    end
end