#import "cover.typ": cover
#import "template.typ": *

#show: project

// Music Memorabilia Online Auction
#cover(title: "[Nome original aqui, sla UMusic Auction]", authors: (
  (name: "Rodrigo Monteiro", number: "a100706"), 
  (name: "Miguel Gramoso", number: "a100835"), 
  (name: "Luís Figueiredo", number: "a100549"), 
  (name: "Diogo Abreu", number: "a100646")),
  "Setembro, 2023")

#set page(numbering: "i", number-align: center)
#counter(page).update(1)

#heading(numbering: none, outlined: false)[Resumo]
<\<O resumo tem como objectivo descrever de forma sucinta o trabalho realizado. Deverá conter uma pequena introdução, seguida por uma breve descrição do trabalho realizado e terminando com uma indicação sumária do seu estado final. Não deverá exceder as 400 palavras.>>   

\

*Área de Aplicação*: Desenvolvimento de uma aplicação para um leilão online.

*Palavras-Chave*: Leilões Online, Music Memorabilia, SQL, C\#, Engenharia de Software, Bases de Dados.

#show outline: it => {
    show heading: set text(size: 18pt)
    it
}

#{
  show outline.entry.where(level: 1): it => {
    v(5pt)
    strong(it)
  }

  outline(
    title: [Índice], 
    indent: true, 
  )
}

#v(-0.4em)
#outline(
  title: none,
  target: figure.where(kind: "attachment"),
  indent: n => 1em,
)

#outline(
  title: [Lista de Figuras],
  target: figure.where(kind: image),
)

#outline(
  title: [Lista de Tabelas],
  target: figure.where(kind: table),
)

// Make the page counter reset to 1
#set page(numbering: "1", number-align: center)
#counter(page).update(1)

#set list(marker: [--])

= Introdução
<<\Este primeiro capítulo deverá ter obrigatoriamente as subsecções abaixo apresentadas.>>

== Contextualização

<\<Nesta secção deverá ser apresentado o contexto no qual se desenvolve o caso de estudo seleccionado.>>

== Apresentação do Caso de Estudo
<\<Esta secção acolherá uma descrição concisa do caso de estudo seleccionado.>>

== Motivação e Objectivos
<\<Esta secção acolherá os diversos motivos, acompanhados por uma breve descrição, que conduziram à proposta e ao desenvolvimento do trabalho, assim como a apresentação detalhada dos diversos objectivos a alcançar com a sua realização.>>

== Estrutura do Relatório
<\<Após a leitura da introdução de um relatório é "simpático" apresentar uma breve descrição daquilo que se vai encontrar nos demais capítulos do relatório.>>

= Definição do Sistema

== Contextualização

Alexandre Sousa, um empreendedor calculoso, começou a sua carreira como um contabilista certificado, e com o passar do tempo ficou reconhecido na sua área de trabalho. Possui uma postura calma; no entanto, o seu entusiasmo por vezes interrompe essa serenidade. Estas características, juntamente com a sua capacidade de liderança, levou-o a formar uma empresa que, posteriormente, obteve bastante sucesso a nível internacional.

Décadas mais tarde, em 2018, vendeu a sua parte da empresa, e deixou o cargo de diretor. Assim, com 51 anos de idade, decidiu afastar-se da vida profissional. Apesar disso, continuou a direcionar a sua atenção para o surgimento de novas empresas e modelos de negócio da indústria. Afinal, almeja sempre aprender e empenhar-se nas áreas que mais admira. 

Em 2021, encontrou um domínio que instigou particularmente o seu interesse: leilões. Levado por essa vontade, estudou teoria de leilões, começando com os livros e artigos de Paul Klemperer, até chegar, por fim, ao estudo e análise do desenvolvimento e design de leilões. 
Passado um ano, decidiu começar uma nova empresa, desta vez de leilões online. Determinou, também, que a área de negócio seria “music memorabilia & vinyls”, inspirada pelo seu hobby de colecionar vinis exclusivos, e pela sua afeição à música. 

Agora, em 2023, Alexandre reúne uma equipa: um gestor, um administrador de leilões, um especialista em vinis, entre outros. Para além disso, para o desenvolvimento do sistema, contrata uma empresa de desenvolvimento de software.


== Fundamentação

Depois de ter obtido conhecimento teórico acerca de leilões, o seu interesse não terminou. Então, após falar com diversos especialistas na área, determinou que seria uma boa decisão colocar uma das suas ideias em prática.
Estando já familiarizado com o mercado de leilões relacionados a música, tradicionais e online, e possuindo ele próprio uma extensa coleção de vinis, encarou esta decisão como uma oportunidade para juntar duas das suas áreas de interesse e para voltar à vida profissional, que tivera anos atrás, com entusiasmo. Além disso, reconheceu e concluiu que um leilão online traria muitas vantagens em comparação a um tradicional.


== Objetivos

Portanto, definiu um conjunto de objetivos, alinhados com a sua ética de trabalho, que pretende atingir com a sua nova empresa.\ \
- Estabelecer um valor baixo para a comissão do comprador (“buyer's premium”) e para a comissão de venda (“sales commission”) @auction_houses_comparison_table.
- Fazer um sistema honesto e seguro através de diversos  mecanismos: utilização de um tipo de leilão que siga esses princípios; manutenção de uma base de dados acerca dos produtos vendidos, ou à venda no mercado, atualizada por assistentes e até por alguns utilizadores selecionados; verificação da autenticidade dos vendedores e dos compradores, e verificação da sua identidade.
- Obter uma comunidade distribuída geograficamente.
- Desencorajar comportamentos colusivos, e predatórios @auction_design_article.
- Preservar e valorizar a história musical dos artigos.
- Vender artigos assinados ou com dedicatórias, vinis de edições exclusivas, antigas ou limitadas, itens pessoais, adereços, roupas ou instrumentos utilizados pelos artistas em vídeos ou concertos, prémios musicais, entre outros.
- Obter um sistema capaz de suportar interação com um grande número de clientes em simultâneo, sem latência ou outros problemas técnicos.
- Obter um sistema que permita a gestão dos eventos por parte de administradores e assistentes.


== Viabilidade

Como a ideia visiona um leilão online, inúmeras vantagens provêm desse facto: os custos de transação para os compradores e vendedores diminuem, podem ser aceites diversos métodos de pagamento, podem existir leilões de duração ininterrupta, a exibição e descrição detalhada de produtos torna-se simples e facilmente acessível, e uma plataforma digital facilita a realização de leilões complexos e simultâneos, e amplia a participação, sendo que a localização geográfica dos participantes deixa de ser um obstáculo --- uma grande mudança em relação aos leilões tradicionais.

Para além disso, há uma oferta limitada de leilões online nesta área de negócio, o que é surpreendente, visto que a música é uma forma de entretenimento consumida pela maioria das pessoas, desde a rádio até às trilhas sonoras dos filmes. Por consequência desta magnitude, o conjunto de pessoas com uma forte conexão ao mundo da música é significativo, e, portanto, origina a necessidade de existirem empresas nesta área de negócio.

Por fim, como a maioria dos clientes prefere métodos justos e honestos, será adotado um tipo de leilão que na teoria possui essas características, e este será customizado para se alinhar com o ambiente digital. Assim, não será utilizado, por exemplo, o “english auction”, mas sim um “ascending clock auction”, também chamado de leilão japonês.

/ Ascending clock auction: _In the model most commonly used by auction theorists, the price rises continuously while bidders gradually quit the auction. Bidders observe when their competitors quit, and once someone quits they are not let back in. There is no possibility for one bidder to preempt the process by making a large “jump bid”_ @paul_auction_theory_book.

Ou seja, o preço aumenta continuamente, talvez por intervalos de tempo, a partir de um preço inicial, e os participantes podem escolher sair. Esta ideia, apesar de tradicional, adequa-se ao ambiente digital pois o processo é muito mais simples do que, por exemplo, o de um "ascending-bid auction" normal, possuindo ainda assim características de um "general model" #footnote[Também existem outros tipos básicos de leilões como o \"descending-bid\", \"first-price sealed-bid\", e \"second-price sealed-bid\". Em teoria, mas tendo mais em consideração um \"private-value model\", o \"descending-bid\" é semelhante a um \"first-price sealed-bid\", sendo por vezes chamado de \"open first-price auction\". Da mesma forma, o \"ascending-bid\" (o leilão japonês) é semelhante a um \"second-price auction\", tal como enuncia o \"revenue equivalence theorem\". @wiki_revenue_equivalence]. Também serão utilizados alguns aspetos da "second-price sealed-bid", de uma forma semelhante ao leilão "Anglo-Dutch", que consegue capturar as vantagens do "sealed-bid auction" @auction_design_article.

#pagebreak()

== Recursos a utilizar

// pah, podemos ir adicionando coisas aqui ao longo tempo
// fundamentar isto com (por exemplo) : usamos Visual Paradigm porque UML etc etc
// o mesmo para os outros
*Ferramentas*

  - Microsoft Visual Studio e Microsoft Visual Studio Code
  - Microsoft .NET C\#
  - Microsoft SQL Server
  - Visual Paradigm
  - Typst

*Recursos Humanos*

  - Levantadores de Requisitos 
  - Utilizadores
  - Patrocinadores

== Equipa de trabalho

*Pessoal Interno*
  - Um gestor
  - Um administrador de leilões
  - Um especialista em vinis
  - Um especialista em marketing
  - Fotógrafos
  - Assistentes
  - Catalogadores

*Pessoal Externo*
  - Equipa de desenvolvimento do sistema:
    - Rodrigo Monteiro, Luís Figueiredo, Diogo Abreu e Miguel Gramoso.

*Outros*
  - Pessoas selecionadas para testar do sistema.


== Plano de execução do trabalho

Antes de ser iniciada a execução do projeto, foi definido um plano de execução da fase inicial, através de um diagrama de Gantt (@diagrama_gantt), e cujas tarefas estão distribuídas ao longo do tempo e por diferentes grupos de tarefas.

É possível verificar que foi alocada uma quantidade de tempo significativa para a pesquisa e estudo acerca do tema, visto que achamos que pode influenciar a qualidade do trabalho futuro.
Por fim, definimos que algumas tarefas têm dependências, i.e., têm uma sequência fixa, e que algumas podem ser executadas em paralelo, de modo a aumentar a eficiência do grupo de trabalho face às restrições de tempo.
As restantes tarefas são relativas à implementação e desenvolvimento do sistema e serão planeadas no fim da fase inicial.

Para facilitar este desenvolvimento em paralelo e o cumprimento atempado das tarefas, foram planeadas diversas reuniões, e foi desenvolvido um _Discord Bot_ de gestão de tarefas (@discord_bot).

#figure(
  caption: "Diagrama de Gantt - Plano de execução",
  kind: image,
  image("images/plano_de_execuçao.jpg", width: 100%)
) <diagrama_gantt>

#figure(
  caption: "Task-Manager Bot",
  kind: image,
  image("images/discord_bot.png", width: 35%)
) <discord_bot>

= Definição de Requisitos

== Apresentação da estratégia e método

// estive a pesquisar sobre isto, n fiz nada tho

== Descrição geral dos requisitos levantados

#set enum(indent: 10pt)

=== Registo de um utilizador

Requisitos do utilizador:
  + O utilizador só pode participar nos leilões se estiver registado.
  + O utilizador cria uma conta na plataforma.
  + Para que um utilizador seja administrador, tal terá de ser assinalado manualmente por outros administradores ou por responsáveis pelo sistema/ base de dados do sistema.

Requisitos do sistema:
  + O sistema pede o nome completo, email e palavra-passe.
  + Opcionalmente, o cliente pode escolher definir um método de pagamento, uma morada de envio, e uma autenticação de dois fatores introduzindo o número de telemóvel.
  + Não é permitida a existência de utilizadores com o mesmo email.
  + As informações são guardadas.
  + É enviado um email para verificação da conta.

=== Adicionar um método de pagamento

Requisitos do utilizador:
  + O utilizador escolhe introduzir os seus dados de pagamento.

Requisitos do sistema:
  + O utilizador fornece o nome associado ao cartão, o número do cartão, a data de validade, e o CVV/CVC.
  + Pode introduzir morada de faturação ou escolher que esta seja a mesma da morada de envio.
  + Também pode definir ACH como método de pagamento.

=== Adicionar uma morada

Requisitos do utilizador:
  + O utilizador escolhe introduzir uma morada (de faturação ou de envio).

Requisitos do sistema:
  + O utilizador fornece a morada, país, estado/província/distrito, cidade e código-postal.

=== Autenticação

Requisitos do utilizador:
  + O utilizador pode aceder à sua conta e pode participar nos leilões depois de estar autenticado.

Requisitos do sistema:
  + O sistema pede o email e a palavra-passe do utilizador.
  + O email tem de estar registado, caso contrário a autenticação é rejeitada.
  + Caso esteja registado, e a palavra-passe encriptada corresponda à fornecida, a autenticação é feita com sucesso.

=== Terminar sessão

Requisitos do utilizador:
  + O utilizador escolhe terminar a sessão, tendo uma sessão iniciada.

Requisitos do sistema:
  + O sistema termina a sessão em curso.
  + Para entrar na conta, terá de ser feita uma autenticação novamente.

=== Editar conta

Requisitos do utilizador:
  + O utilizador acede ao seu perfil para editar os seus dados.

Requisitos do sistema:
  + O email e a palavra-passe só podem ser editados se for efetuada uma nova autenticação (introdução da palavra-passe).
  + Podem ser adicionadas até 5 moradas de faturação e de envio, ou editadas.
  + Pode ser adicionado ou removido um método de pagamento.
  + As alterações são guardadas, após o utilizador submeter as alterações.

=== Pesquisa

Requisitos do utilizador:
  + Pesquisa de um item, artista, leilão, lote, etc.
  + O utilizador pode adicionar filtros e opções de ordenação dos resultados.
  + O utilizador pode mudar a página de resultados caso exista mais do que uma.

Requisitos do sistema:
  + O sistema apresenta esta funcionalidade de pesquisa sempre que possível.
  + O sistema recebe uma _string_ de pesquisa com _keywords_, e, opcionalmente, determinados filtros (por exemplo, categoria, estado, etc.) e opções de sorting (por exemplo, preço, popularidade, relevância, _latest_, etc.).
  + _Semantic search_ e _natural language processing_ poderão ser utilizados.
  + Retorna os resultados correspondentes (com paginação, se necessário).

=== Consulta de um item

Requisitos do utilizador:
  + O utilizador escolhe a visualização específica de um item.
  + Pode escolher visualizar todos os itens do leilão a que o item pertence, se existirem.
  + Pode adicionar ou remover o item da sua lista de favoritos. 

Requisitos do sistema:
  + O sistema apresenta as imagens disponíveis, o nome, a descrição, o valor estimado, o preço inicial, as percentagens da comissão do comprador e a data do leilão.

=== Consulta de um leilão

Requisitos do utilizador:
  + O utilizador escolhe visualizar os detalhes de um leilão.
  + Pode escolher ser notificado quando este começar.
  + Pode adicionar o leilão aos favoritos.

Requisitos do sistema:
  + Fornece o nome/ tema do leilão, descrição, a data e uma listagem do(s) lote(s).
  + Fornece opções de filtragem e ordenação dos lotes.

=== Consulta da lista de favoritos

Requisitos do utilizador:
  + O utilizador pode escolher verificar a sua lista de leilões, itens, ou de categorias favoritas.

Requisitos do sistema:
  + O sistema mostra a lista de favoritos do utilizador com base na data de adição e com paginação, se necessário.

=== Consulta de notificações

Requisitos do utilizador:
  + O utilizador escolhe visualizar as suas notificações/ alertas/ avisos.
  + Pode selecionar um filtro: Todas as mensagens/ Mensagens Lidas/ Mensagens não lidas.
  + Seleciona uma ou mais notificações e marca como lida ou não lida.

Requisitos do sistema:
  + Sistema mostra uma listagem das notificações

=== Consulta das categorias

Requisitos do utilizador:
  + O utilizador escolhe visualizar as categorias de itens disponíveis.
  + Pode adicionar uma categoria aos favoritos.
  + Pode escolher visualizar os itens associados a essa categoria.

Requisitos do sistema:
  + O sistema apresenta uma lista das categorias, cada uma representada pelo seu nome e por uma imagem.

=== Consulta dos itens ganhos

Requisitos do utilizador:
  + O utilizador escolhe visualizar os itens que ganhou.
  + Pode selecionar e visualizar um item em específico.

Requisitos do sistema:
  + O sistema apresenta uma lista dos itens.

=== Submeter um item 

Requisitos do utilizador:
  + O utilizador escolhe submeter um item seu para ser leiloado com ajuda da empresa.

Requisitos do sistema:
  + O sistema pede: uma descrição detalhada (material, dono original, quem fez o item, quando foi feito, condição do item, se tem assinaturas, etc.), uma seleção de como é que o item foi obtido (comprado, herdado, encontrado, oferecido), uma seleção das categorias a que pertence (presentes no sistema), informações adicionais, documentos adicionais (em PDF), e imagens do item.
  + A informação submetida é guardada e fica numa fila de espera para verificação e aprovação por parte de especialistas.

=== Consultar lista de itens submetidos

Requisitos do utilizador:
  + O utilizador escolhe visualizar a lista dos próprios itens, podendo filtrar os resultados por "Todos os itens"/ "Vendidos"/ "Em leilão"/ "Sem leilão"/ "Em verificação".
  + Um utilizador não pode entrar no leilão relativo ao seu item.

Requisitos do sistema:
  + O sistema apresenta a lista de itens de acordo com os filtros e com paginação, se necessário.

=== Entrar num leilão

Requisitos do utilizador:
  + Quando a data de início é atingida, o leilão começa e é feita uma fila de espera para os utilizadores escolherem entrar no leilão. 

Requisitos do sistema:
  + O sistema regista que o utilizador irá participar no leilão e é adicionado à lista visível para outros utilizadores.
  + O número de utilizadores a participar no leilão é incrementado -- este número é visível para todos os utilizadores.

=== Funcionamento/ Sair do leilão

Requisitos do utilizador:
  + Durante o intervalo de tempo definido, os utilizadores escolhem ou não sair do leilão. Caso queiram continuar, passam para a próxima ronda, caso não queiram, têm de inserir um valor que esteja no intervalo atual (por exemplo, caso queiram sair numa ronda em que o valor seja 300 e o valor de incremento 50, têm de escolher um valor entre 250 e 299), uma _sealed-bid_ final. Caso um utilizador não escolha, sairá do leilão automaticamente com uma _sealed-bid_ de valor mínimo.
  + Se restar apenas uma pessoa numa ronda, essa pessoa ganha e paga o segundo valor mais alto das _sealed-bids_ da ronda anterior.
  + Se todas as pessoas restantes saírem numa ronda, ganha a que tiver o maior valor na sua _sealed-bid_ final, e paga o segundo valor mais alto. O desempate é feito com base no tempo de submissão da _sealed-bid_ final.

Requisitos do sistema:
  + O sitema utiliza um ascending-clock que a cada determinado intervalo de tempo (por exemplo, 3 minutos), incrementa um determinado valor.
  + O sistema disponibiliza a lista de utilizadores a participar, e o seu número total, em tempo real.
  + O sistema fornece uma opção de sair do leilão.
  + O sistema regista as entradas e saídas do leilão, tal como os valores submetidos na saída e o respetivo _timestamp_.
  + Todos os acontecimentos do leilão são guardados num _log_ automaticamente pelo sistema.

=== Página de gestão do sistema

Requisitos do utilizador:
  + O utilizador tem de ser administrador para ter acesso a estas funcionalidades de gestão do sistema.

Requisitos do sistema:
  + O sistema disponibiliza opções de gestão de leilões, de itens e de utilizadores.

=== Página de gestão de leilões

Requisitos do utilizador:
  + O administrador escolhe visualizar a página de gestão de leilões a partir da página de gestão do sistema principal.

Requisitos do sistema:
  + O sistema fornece uma opção de criação de um novo leilão.
  + O sistema fornece uma lista dos leilões, os quais podem ser editados ou removidos.
  + O sistema fornece uma lista de leilões a decorrer.

=== Criação de um leilão

Requisitos do utilizador:
  + O administrador escolhe criar um leilão na página de gestão de leilões.

Requisitos do sistema:
  + O sistema pede o nome/ tema do leilão, uma descrição, uma data de início, uma escolha entre "início automático" ou "início manual", duração da fila de espera, intervalo de tempo do _ascending clock_, e valor do incremento.
  + O sistema apresenta um conjunto de itens que não pertençam a outros leilões, os quais podem ser filtrados (por exemplo, por categoria) e que podem ser selecionados para fazerem parte do leilão a ser criado.

=== Página de gestão de itens 

Requisitos do utilizador:
  + O administrador pode escolher visualizar a lista de itens submetidos por verificar, e de itens aprovados com e sem leilões.
  + Pode criar, editar (por exemplo, associando-o a um leilão) ou remover um item.

Requisitos do sistema:
  + O sistema disponibiliza a lista de itens por verificar e verificados.

// Falta decidir o que fazer em relação ao que acontece após a aprovação de um item; ele é enviado para a empresa? como é que ocorre o envio, quando é que pode ser considerado um item pronto a ser leiloado, etc.

=== Aprovação de um item

Requisitos do utilizador:
  + 

Requisitos do sistema:
  + 

=== Página de gestão de utilizadores

Requisitos do utilizador:
  + O administrador escolhe gerir os utilizadores do sistema.

Requisitos do sistema:
  + O sistema fornece uma lista de todos os utilizadores (com paginação, se necessário), e uma opção de pesquisa e de filtragem de resultados.
  + O sistema permite notificar, editar, banir e remover utilizadores.

#set enum(indent: 0pt)

== Validação dos requisitos

= Especificação e Modelação do Software

== Apresentação geral da especificação

== Aspetos estruturais

== Aspetos comportamentais

= Conceção do Sistema de Dados

== Apresentação geral das estrutura do sistema de dados

== Descrição detalhada dos vários elementos de dados e seus relacionamentos

= Esboço das Interfaces do Sistema

== Estrutura geral das interfaces do sistema

== Caracterização das interfaces


= Conclusões e Trabalho Futuro

<\<Elaborar uma apreciação crítica sobre o trabalho realizado, apontando os seus pontos fortes e fracos. Adicionalmente, caso se aplique, enunciar eventuais tarefas a realizar futuramente ou novas opções para estender o trabalho realizado.>>

// #heading(numbering: none)[Referências]
#bibliography("refs.bib", title: "Referências")

#heading(numbering: none)[Lista de Siglas e Acrónimos]

/ BD: Base de Dados
/ DW: Data Warehouse
/ OLTP: On-Line Analyical Processing

#heading(numbering: none)[Anexos]