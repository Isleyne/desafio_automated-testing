Feature: Solicitar novo relatório

@dado_branco
  Scenario: Enviar ao menos um parametro para criação do relatorio
    * API: realizar solicitacao POST com os dados em branco para criacao do novo relatorio
    * JsonSchema: "relatorio_dado_branco"
    * ValidateCode: "400"

@data_divergente
  Scenario: Informar a data de nascimento divergente da base
    * API: realizar solicitacao POST com a data de nacimento diferente que consta na base da receita federal
    * JsonSchema: "relatorio_data_divergente"
    * ValidateCode: "200"

@nome_divergente
  Scenario: Informar o nome divergente da base
    * API: realizar solicitacao POST com o nome diferente que consta na base da receita federal
    * JsonSchema: "relatorio_nome_divergente"
    * ValidateCode: "200"

@buscar_relatorio
  Scenario: Buscar relatorio pessoal
    * API: realizar solicitacao POST para buscar dado pessoal
    * JsonSchema: "buscar_dado_pessoal"
    * ValidateCode: "400"
