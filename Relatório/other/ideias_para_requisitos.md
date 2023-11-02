registo do utilizador DONE
autenticação na aplicação DONE
terminar sessão DONE
editar conta DONE
pesquisar item / por artista	DONE
notificações DONE
consulta de um item DONE
consulta das categorias DONE
adicionar item à lista de favoritos DONE
adicionar categoria à lista de favoritos DONE
adicionar vendedor à lista de favoritos DONE
avaliar um vendedor -- DEIXOU DE EXISTIR (VENDEDORES SAO ABSTRAIDOS PELA EMPRESA)
consulta do perfil do vendedor -- DEIXOU DE EXISTIR
remoção dos favoritos DONE
consult
ar lista de itens favoritos DONE
consultar lista de vendedores favoritos DONE
consultar lista de categorias favoritas DONE
avaliar um vendedor depois de uma compra -- DEIXOU DE EXISTIR
lista de itens ganhos DONE
lista de itens vendidos DONE
lista de itens por vender (agendados e não agendados) DONE
utilizador: submeter item DONE
utilizador: pedido de remoção do leilão (?)
administrador: iniciar ou parar leilão/ eventos
administrador: adicionar e agendar item, editar, apagar
administrador: enviar notificações para outros utilizadores
colocar uma licitação 
registo como administrador
entrar no leilao DONE
sair do leilao DONE

pagina de gestao de leilões
    - registo como administrador DONE
    - opçao de o leilao começar automaticamente DONE
    - criação de um leilão DONE
    - opção de começar manualmente DONE
    - lista de submissoes de items
    - aprovar ou nao um item
    - adicionar item a leilao DONE
    - remover item do leilao DONE
    - envio de notificaçoes para utilizadores

---

é obrigatório registar antes de poder licitar ou vender
é possível assistir ao progresso de leilões públicos disponíveis sem estar registado
um utilizador deve conseguir fazer login e registar
payment method
name on the card, card number, expiration, cvv, billing address (option: same as shipping address)
Bank Account (ACH)
morada de envio
address, apt/suit, company (optional), country, state/province, city, zip/postal-code
two-factor authentication: phone number
é enviado um resultado da avaliação do registo por email
um utilizador pode vender um produto submetendo um formulário que será avaliado e aprovado ou não aprovado pelos administradores
o formulário deve conter informação detalhada acerca do produto:
verificar identidade do utilizador, caso ainda não tenha sido feito
foto que identifique a pessoa, foto(s) de um documento de identificação
histórico: se foi comprado previamente e por que valor; como foi obtido; comprado/ herdado/ encontrado/ presente/ outro  
diversas fotos do produto
dimensões do produto
artista(s) a que está associado
ano de criação/ de uso 
estado: excelentes condições, péssimas condições, etc.
tipo de artigo e as suas características: vinil, instrumento, vestuário, etc.
comprovação de originalidade/ assinatura/ etc. se necessário/ possível
em geral a comissão de comprador é de 15% e a  comissão de vendedor de 20% (apenas quando é vendido), mas pode variar de item para item e de acordo com o price range da licitação final
o utilizador tem um histórico de participação em leilões
o utilizador tem um histórico de itens comprados
cada item ou conjunto selecionado de itens a leiloar é anunciado previamente, existindo um respectivo countdown e starting price
um utilizador pode escolher seguir determinadas categorias de itens
um utilizador pode escolher ser notificado quando um determinado auction irá começar
o item que o vendedor quer vender depois de aprovado tem de ser enviado para a empresa, e a empresa irá confirmar a receção do item por email ou pelo sistema/app/website
o tipo de leilão será um ascending-clock-auction, com um primeiro desempate de second-price sealed-bid e um segundo desempate com base no tempo de saída.
tanto vendedores como compradores pagam por transporte, com exceção de casos específicos
lista de produtos favoritos
schedule global/ individual
vendedor não pode licitar num produto próprio


-- Divisão dos casos de uso por categorias

- Conta do utilizador

Criar conta
Login
Redefinir palavra passe
Adicionar novo método de pagamento
Adicionar nova morada

- Consultas

Pesquisar
Consulta de um lote
Consulta de um leilão
Consulta das listas de favoritos
Consulta das notificações
Consulta das categorias
Consulta de uma categoria
Consulta dos lotes ganhos
Consulta dos lotes submetidos
Remoção de um item da lista de favoritos


- Funcionamento dos lotes

Submeter lote
Aprovar submissão
Criar um lote
Editar um lote

- Funcionamento dos leilões
Entrar num leilão
Sair de um leilão
Ganhar um lote
Criar um leilão
Editar um leilão
Remover um leilão