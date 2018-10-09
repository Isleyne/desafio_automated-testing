Given("API: realizar solicitacao POST com os dados em branco para criacao do novo relatorio") do
  dados = $cenarios['dados_em_branco']
    @response = API::RelatorioApi.list(
      dados['cpf_data_de_nascimento'],
      dados['cpf_nome'],
      dados['cpf_numero']
    )
end

Given("API: realizar solicitacao POST com a data de nacimento diferente que consta na base da receita federal") do
  dados = $cenarios['data_diferente']
  @response = API::RelatorioApi.list(
      dados['cpf_data_de_nascimento'],
      dados['cpf_nome'],
      dados['cpf_numero']
  )
end

Given("API: realizar solicitacao POST com o nome diferente que consta na base da receita federal") do
  dados = $cenarios['nome_diferente']
  @response = API::RelatorioApi.list(
    dados['cpf_data_de_nascimento'],
    dados['cpf_nome'],
    dados['cpf_numero']
  )
end

Given("API: realizar solicitacao POST para buscar dado pessoal") do
  dados = $cenarios['buscar_relatorio']
  @response = API::RelatorioApi.list(
    dados['cpf_data_de_nascimento'],
    dados['cpf_nome'],
    dados['cpf_numero']
  )
end
