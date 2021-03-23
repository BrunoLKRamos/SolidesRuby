class CadastroCurriculoDadosPessoaisPage < SitePrism::Page
    
## Seletores 
    element :label_informacoes_pagina_cadastro, '[Id="tip02"]  .sc-dEfkYy.iCzjnh'
    element :botao_salvar_dados_aplicar,        'button[type="button"]'
# Informações de Contato
    element :campo_telefone,                    'input[name="contacts[phone]"]'
    element :campo_email,                       'input[name="contacts[secondaryEmail]"]'
    element :campo_confirmaEmail,               'input[name="contacts[secondaryEmailConfirm]"]'

# Informações Pessoais
    element :campo_nome,                        'input[Id="name"]'
    element :campo_nacionalidade,               'input[name="nationality"]'
    element :campo_naturalidade,                'input[name="naturality"]'
    element :campo_pretensaoSalarial,           'input[name="salaryExpectation"]'
    element :campo_sobre,                       'textarea[name="about"]'

# Endereço
    element :campo_CEP,                         'input[name="address[zipCode]"]'
    element :campo_numero,                      'input[name="address[number]"]'

# Documentos
    element :campo_rg,                          'input[name="documents[rg]"]'
    element :campo_numero_cnh,                  'input[name="documents[driverLicense]"]'
    element :campo_categoria_cnh,               'input[name="documents[driversLicenseCategory]"]'
    element :campo_estado_emissao_cnh,          'input[name="documents[driversLicenseUf]"]'
    element :campo_numero_titulo_eleitor,       'input[name="documents[electoralNumber]"]'
    element :campo_zona_eleitoral,              'input[name="documents[electoralZone]"]'
    element :campo_secao_eleitoral,             'input[name="documents[electoralSection]"]'
    element :campo_numero_pis,                  'input[name="documents[pis]"]'
    element :campo_numero_ctps,                 'input[name="documents[ctpsNum]"]'
    element :campo_numero_serie_ctps,           'input[name="documents[ctpsSerie]"]'
    element :campo_numero_reservista,           'input[name="documents[reservist]"]'

## Métodos
    def preencher_informacoes_contato(telefone, email, confirmaEmail)
        campo_telefone.set              telefone
        campo_email.set                 email
        campo_confirmaEmail.set         confirmaEmail
    end

    def preencher_informacoes_pessoais(nome, nacionalidade, naturalidade, pretensaoSalarial, sobre)
        campo_nome.set                  nome
        campo_nacionalidade.set         nacionalidade
        campo_naturalidade.set          naturalidade
        campo_pretensaoSalarial.set     pretensaoSalarial
        campo_sobre.set                 sobre
    end
    
    def preencher_informacoes_endereco(cep, numero)
        campo_CEP.set                   cep
        campo_numero.set                numero
    end

    def preencher_informacoes_documentos(rg, cnh, categoriaCnh, estadoEmissaoCnh, numeroTituloEleitor, zonaEleitoral, secaoEleitoral, numeroPis, numeroCtps, numeroSerieCtps, numeroReservista)    
        campo_rg.set                    rg
        campo_numero_cnh.set            cnh
        campo_categoria_cnh.set         categoriaCnh
        campo_estado_emissao_cnh.set    estadoEmissaoCnh
        campo_numero_titulo_eleitor.set numeroTituloEleitor
        campo_zona_eleitoral.set        zonaEleitoral
        campo_secao_eleitoral.set       secaoEleitoral
        campo_numero_pis.set            numeroPis
        campo_numero_ctps.set           numeroCtps
        campo_numero_serie_ctps.set     numeroSerieCtps
        campo_numero_reservista.set     numeroReservista
    end

    def salvar_dados_aplicar()
        botao_salvar_dados_aplicar.click
    end
end