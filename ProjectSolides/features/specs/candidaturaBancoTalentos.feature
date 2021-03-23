# language: pt

Funcionalidade: Candidatura no banco de talentos

Como candidato a vaga
Eu quero candidatar-me a uma vaga no banco de talentos da plataforma
Para participar do processo seletivo

Cenario: Candidatura no banco de talentos

Dado que eu estou na página de "Vagas abertas"
Quando escolho a vaga a qual desejo me candidatar
E crio um novo usuario 
E preencho os dados de currículo e dados pessoais
E respondo o questionário comportamental Profiler
Entao visualizo a confirmação da candidatura
