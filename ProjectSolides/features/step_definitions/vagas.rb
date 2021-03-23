Dado('que eu estou na página de {string}') do |string|
    vagas.load
end

Quando('escolho a vaga a qual desejo me candidatar') do
     click_on('analista de testes (QA)')

     vagas.candidatar_vaga()
end