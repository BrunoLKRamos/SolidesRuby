Então('visualizo a confirmação da candidatura') do
    expect(page).to have_current_path('https://nayaracorporation.solides.jobs/applicationStatus/', url: true)   
    
    @element = first(:css, '.sc-rzOft.kPXPlB .sc-eIvgmF.JbVQT')
    expect(@element.text).to include("Aplicação realizada com sucesso na vaga analista de testes")
end