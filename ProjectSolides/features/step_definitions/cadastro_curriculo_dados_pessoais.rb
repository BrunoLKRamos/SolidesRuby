Quando('preencho os dados de currículo e dados pessoais') do  
    cadastroCurriculoDadosPessoais.preencher_informacoes_contato(
      '48999999999',
      'testes@teste.com',
      'testes@teste.com'
    )

    cadastroCurriculoDadosPessoais.preencher_informacoes_pessoais(
      'Fulano da Silva',
      'Brasileiro',
      'São Paulo',
      '1000',
      'Automação utilizando Ruby, Cucumber e Selenium'
    )

 ## Utilizando diferente tipos de seletores
    find(:css, 'div#gender.sc-kUaPvJ.lmtoTz').click
    first(:css, '.sc-cqCuEk.iasZqf').click

    @dataNascimento = find('div[id="birthday"] input[strictparsing=true]')
    @dataNascimento.fill_in with: '31122020'

     find(:css, '[name="maritalStatus"] .sc-kLIISr.idsIzd').click
     first(:css, '[name="maritalStatus"] .sc-cqCuEk.iasZqf').click
 
     find(:css, '[name="seniority"] .sc-kLIISr.idsIzd').click
     first(:css, '[name="seniority"] .sc-cqCuEk.iasZqf').click

     find(:css, '.sc-jtHxuu.bwDKir').click
     first(:css, '.sc-gQNndl.eYcUBX').click

     @dataEmissaoCNH = find('div[label="Data emissão da CNH"] input[strictparsing=true]')
     @dataEmissaoCNH.fill_in with: '31122019'
 
     @dataPrimeiraHabilitacao = find('div[label="Data primeira habilitação"] input[strictparsing=true]')
     @dataPrimeiraHabilitacao.fill_in with: '31122018'
 ##
    cadastroCurriculoDadosPessoais.preencher_informacoes_endereco(
     '88505334',
     '50'
    )

    cadastroCurriculoDadosPessoais.preencher_informacoes_documentos(
      '8888888',
      '72929986293',
      'B',
      'SC',
      '867114750949',
      '150',
      '32',
      '75650751975',
      '987654',
      '3210',
      '0123456789'
    )

    cadastroCurriculoDadosPessoais.salvar_dados_aplicar()
end