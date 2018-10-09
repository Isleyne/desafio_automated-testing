module API

require './features/support/api/rest.rb'

  class RelatorioApi < API::Rest

    def self.post_relatorio(data_de_nascimento, nome, cpf)
      {
        matriz: "consultaPessoaDefault",
        parametros: {
          cpf_data_de_nascimento: data_de_nascimento,
          cpf_nome: nome,
          cpf_numero: cpf,
        }
      }.to_json
    end

    def self.header
      {
        :Authorization => "9a5c457e-d004-46d2-ad0b-b3f015af0c58",
        'Content-Type' => 'application/json',
      }
    end

    def self.list(data_de_nascimento, nome, cpf)
      post(url: "https://api-v2.idwall.co/relatorios",
        payload: self.post_relatorio(data_de_nascimento, nome, cpf),
        headers: self.header
      )
    end
  end
end
