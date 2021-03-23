Dir[File.join(File.dirname(__FILE__),
              '../pages/*_page.rb')].each { |file| require file}

module Pages
    def login
        @login ||= LoginPage.new
    end

    def cadastroUsuario
        @cadastroUsuario ||= CadastroUsuarioPage.new
    end

    def vagas
        @vagas ||= VagasPage.new
    end

    def cadastroCurriculoDadosPessoais
        @cadastroCurriculoDadosPessoais ||= CadastroCurriculoDadosPessoaisPage.new
    end

    def questionarioComportamentalProfiler
        @questionarioComportamentalProfiler ||= QuestionarioComportamentalProfilerPage.new
    end
end