class QuestionarioComportamentalProfilerPage < SitePrism::Page

## Seletores
# Questionário 01
    element :campo_equilibrado_01,                 '[Id="Equilibrado_1"] .sc-hRmvpr.ySrmH'
    element :campo_persistente_01,                 '[Id="Persistente_1"] .sc-hRmvpr.ySrmH'               
    element :campo_perfeccionista_01,              '[Id="Perfeccionista_1"] .sc-hRmvpr.ySrmH'
    element :campo_leal_01,                        '[Id="Leal_1"] .sc-hRmvpr.ySrmH'
    element :campo_metodico_01,                    '[Id="Metódico_1"] .sc-hRmvpr.ySrmH'
    element :campo_dedicado_01,                    '[Id="Dedicado_1"] .sc-hRmvpr.ySrmH'
    element :botao_salvar_ir_proxima_etapa,        '[type="button"][Id="saveDataToNextStep"] '

# Questionário 02
    element :campo_independente_02,                '[Id="Independente_2"] .sc-hRmvpr.ySrmH'
    element :campo_persistente_02,                 '[Id="Persistente_2"] .sc-hRmvpr.ySrmH'
    element :campo_pratico_02,                     '[Id="Prático_2"] .sc-hRmvpr.ySrmH'
    element :campo_leal_02,                        '[Id="Leal_2"] .sc-hRmvpr.ySrmH'
    element :campo_animado_02,                     '[Id="Animado_2"] .sc-hRmvpr.ySrmH'
    element :campo_dedicado_02,                    '[Id="Dedicado_2"] .sc-hRmvpr.ySrmH'
    element :botao_salvar_finalizar,               'button[Id="saveFinalize"]'

## Metodos
    def selecionar_itens_questionario_01()
        campo_equilibrado_01.click
        campo_persistente_01.click
        campo_perfeccionista_01.click
        campo_leal_01.click
        campo_metodico_01.click
        campo_dedicado_01.click
    end

    def salvar_ir_proxima_etapa()
        botao_salvar_ir_proxima_etapa.click
    end

    def selecionar_itens_questionario_02()
        campo_independente_02.click
        campo_persistente_02.click
        campo_pratico_02.click
        campo_leal_02.click
        campo_animado_02.click
        campo_dedicado_02.click
    end

    def salvar_finalizar()
        botao_salvar_finalizar.click
    end

end