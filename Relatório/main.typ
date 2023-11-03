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

// = Introdução
// <<\Este primeiro capítulo deverá ter obrigatoriamente as subsecções abaixo apresentadas.>>

// == Contextualização

// <\<Nesta secção deverá ser apresentado o contexto no qual se desenvolve o caso de estudo seleccionado.>>

// == Apresentação do Caso de Estudo
// <\<Esta secção acolherá uma descrição concisa do caso de estudo seleccionado.>>

// == Motivação e Objectivos
// <\<Esta secção acolherá os diversos motivos, acompanhados por uma breve descrição, que conduziram à proposta e ao desenvolvimento do trabalho, assim como a apresentação detalhada dos diversos objectivos a alcançar com a sua realização.>>

// == Estrutura do Relatório
// <\<Após a leitura da introdução de um relatório é "simpático" apresentar uma breve descrição daquilo que se vai encontrar nos demais capítulos do relatório.>>

= Definição do Sistema

== Contextualização

#let protagonista = "Alexandre Sousa"

#protagonista, um empreendedor calculoso, começou a sua carreira como um contabilista certificado, e com o passar do tempo ficou reconhecido na sua área de trabalho. Possui uma postura calma; no entanto, o seu entusiasmo por vezes interrompe essa serenidade. Estas características, juntamente com a sua capacidade de liderança, levou-o a formar uma empresa que, posteriormente, obteve bastante sucesso a nível internacional.

Décadas mais tarde, em 2018, vendeu a sua parte da empresa, e deixou o cargo de diretor. Assim, com 51 anos de idade, decidiu afastar-se da vida profissional. Apesar disso, continuou a direcionar a sua atenção para o surgimento de novas empresas e modelos de negócio da indústria. Afinal, almeja sempre aprender e empenhar-se nas áreas que mais admira. 

Em 2021, encontrou um domínio que instigou particularmente o seu interesse: leilões. Levado por essa vontade, estudou teoria de leilões, começando com os livros e artigos de Paul Klemperer, até chegar, por fim, ao estudo e análise do desenvolvimento e design de leilões. 
Passado um ano, decidiu começar uma nova empresa, desta vez de leilões online. Determinou, também, que a área de negócio seria “music memorabilia & vinyls”, inspirada pelo seu hobby de colecionar vinis exclusivos, e pela sua afeição à música. 

Agora, em 2023, #protagonista reúne uma equipa: um gestor, um administrador de leilões, um especialista em vinis, entre outros. Para além disso, para o desenvolvimento do sistema, contrata uma empresa de desenvolvimento de software.


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

Ou seja, o preço aumenta continuamente, possivelmente por intervalos de tempo predeterminados, a partir de um preço inicial, e os participantes podem escolher sair. Esta ideia, apesar de tradicional, adequa-se ao ambiente digital pois o processo é muito mais simples do que, por exemplo, o de um "ascending-bid auction" normal, possuindo ainda assim características de um "general model" #footnote[Também existem outros tipos básicos de leilões como o \"descending-bid\", \"first-price sealed-bid\", e \"second-price sealed-bid\". Em teoria, mas tendo mais em consideração um \"private-value model\", o \"descending-bid\" é semelhante a um \"first-price sealed-bid\", sendo por vezes chamado de \"open first-price auction\". Da mesma forma, o \"ascending-bid\" (o leilão japonês) é semelhante a um \"second-price auction\", tal como enuncia o \"revenue equivalence theorem\". @wiki_revenue_equivalence]. Também serão utilizados alguns aspetos da "second-price sealed-bid", de uma forma semelhante ao leilão "Anglo-Dutch", que consegue capturar as vantagens do "sealed-bid auction" @auction_design_article.

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

  - Levantadores de requisitos 
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

É possível verificar que foi alocada uma quantidade de tempo significativa para a pesquisa e estudo acerca do tema, visto que achamos que influencia a qualidade do trabalho futuro.
Por fim, definimos que algumas tarefas têm dependências, i.e., têm uma sequência fixa, e que algumas podem ser executadas em paralelo, de modo a que se aumente a eficiência do grupo de trabalho face às restrições de tempo.
As restantes tarefas são relativas à implementação e desenvolvimento do sistema e serão planeadas no fim da fase inicial.

Para facilitar este desenvolvimento em paralelo e o cumprimento atempado das tarefas, foram planeadas diversas reuniões, e foi desenvolvido um _bot_ de gestão de tarefas (@discord_bot).

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

Iniciámos o processo de definição de requisitos com uma análise aprofundada do mercado de leilões e colecionismo na área de "music memorabilia" e vinis. A pesquisa abrangeu desde as melhores práticas em plataformas semelhantes #footnote[Por exemplo, https://www.omegaauctions.co.uk, https://www.liveauctioneers.com, https://www.artsy.net/auctions, etc.] até às expectativas dos colecionadores e vendedores neste domínio específico.

Para além disso, realizamos reuniões regulares com a equipa, incluindo #protagonista, para agregar perspectivas significativas no levantamento de requisitos, procurando manter uma aprovação contínua. Na organização de requisitos, estes foram divididos em requisitos funcionais e não funcionais. @sommerville_requirements

Por fim, a estratégia também incluiu entrevistas, inquéritos e questionários direcionados a potenciais utilizadores da plataforma. Esta abordagem proporcionou uma compreensão abrangente das expectativas dos utilizadores, permitindo ajustes iterativos nos requisitos.

== Descrição geral dos requisitos levantados

=== Requisitos Funcionais

#set enum(indent: 10pt)

==== Registo de um utilizador

Requisitos do utilizador:
  + O utilizador só pode participar nos leilões se estiver registado.
  + O utilizador escolhe criar uma conta na plataforma.
  + Para que um utilizador seja administrador, tal terá de ser assinalado manualmente por outros administradores ou por responsáveis pelo sistema/ base de dados do sistema.

Requisitos do sistema:
  + O sistema pede o nome completo, email e palavra-passe.
  + Opcionalmente, o cliente pode escolher definir um método de pagamento, uma morada de envio, e uma autenticação de dois fatores introduzindo o número de telemóvel. (Requisitos 2 e 3.)
  + Não é permitida a existência de utilizadores com o mesmo email.
  + As informações são guardadas.
  + É enviado um email para verificação da conta.

==== Adicionar um método de pagamento

Requisitos do utilizador:
  + O utilizador escolhe introduzir os seus dados de pagamento.

Requisitos do sistema:
  + O utilizador fornece o nome associado ao cartão, o número do cartão, a data de validade, e o CVV/CVC.
  + Pode introduzir uma morada de faturação ou escolher que esta seja a mesma da morada de envio.
  + Também pode definir ACH como método de pagamento.
  + O sistema valida o método de pagamento.
  + Caso o método de pagamento não seja válido, o utilizador é informado e os dados não são aceites.

==== Adicionar uma morada

Requisitos do utilizador:
  + O utilizador escolhe introduzir uma morada de faturação ou de envio.

Requisitos do sistema:
  + O utilizador fornece a morada, país, estado/província/distrito, cidade e código-postal.

==== Autenticação

Requisitos do utilizador:
  + O utilizador pode aceder à sua conta e pode participar nos leilões depois de estar autenticado.

Requisitos do sistema:
  + O sistema pede o email e a palavra-passe do utilizador.
  + O email tem de estar registado, caso contrário a autenticação é rejeitada.
  + Caso esteja registado, e a palavra-passe encriptada corresponda à fornecida, a autenticação é feita com sucesso.

==== Terminar sessão

Requisitos do utilizador:
  + O utilizador escolhe terminar a sessão, tendo uma sessão iniciada.

Requisitos do sistema:
  + O sistema termina a sessão em curso.
  + Para entrar na conta, terá de ser feita uma autenticação novamente.

==== Editar conta

Requisitos do utilizador:
  + O utilizador acede ao seu perfil para editar os seus dados.

Requisitos do sistema:
  + O email e a palavra-passe só podem ser editados se for efetuada uma nova autenticação (introdução da palavra-passe).
  + Podem ser adicionadas até 5 moradas de faturação e de envio, ou editadas.
  + Pode ser adicionado ou removido um método de pagamento.
  + As alterações são guardadas, após o utilizador submeter as alterações.

==== Pesquisa

Requisitos do utilizador:
  + Pesquisa de um lote, artista, ou leilão.
  + O utilizador pode adicionar filtros e opções de ordenação dos resultados.
  + O utilizador pode mudar a página de resultados caso exista mais do que uma.

Requisitos do sistema:
  + O sistema recebe uma _string_ de pesquisa com _keywords_, e, opcionalmente, determinados filtros (por exemplo, categoria, estado, etc.) e opções de sorting (por exemplo, preço, popularidade, relevância, _latest_, etc.).
  + Retorna os resultados correspondentes (com paginação, se necessário).

==== Consulta de um lote

Requisitos do utilizador:
  + O utilizador escolhe a visualização específica de um lote.
  + Pode escolher visualizar todos os lotes do leilão a que o lote pertence.
  + Pode adicionar ou remover o lote da sua lista de favoritos. 

Requisitos do sistema:
  + O sistema apresenta as imagens disponíveis, o nome, a descrição, o valor estimado, o preço inicial, as percentagens da comissão do comprador e a data do leilão.

==== Consulta de um leilão

Requisitos do utilizador:
  + O utilizador escolhe visualizar os detalhes de um leilão.
  + Pode escolher ser notificado quando este começar.
  + Pode adicionar o leilão aos favoritos.

Requisitos do sistema:
  + Fornece o nome/ tema do leilão, descrição, a data e uma listagem do(s) lote(s).
  + Fornece opções de filtragem e ordenação dos lotes.

==== Consulta da lista de favoritos

Requisitos do utilizador:
  + O utilizador pode escolher verificar a sua lista de leilões, lotes, ou de categorias favoritas.

Requisitos do sistema:
  + O sistema mostra a lista de favoritos do utilizador com base na data de adição e com paginação, se necessário.

==== Consulta de notificações

Requisitos do utilizador:
  + O utilizador escolhe visualizar as suas notificações (alertas/ avisos).
  + Pode selecionar um filtro: "Todas as mensagens"/ "Mensagens Lidas"/ "Mensagens não lidas".
  + Seleciona uma ou mais notificações e marca como lida ou não lida.

Requisitos do sistema:
  + Sistema mostra uma listagem das notificações

==== Consulta das categorias

Requisitos do utilizador:
  + O utilizador escolhe visualizar as categorias disponíveis.
  + Pode adicionar uma categoria aos favoritos.
  + Pode escolher visualizar os lotes associados a essa categoria.

Requisitos do sistema:
  + O sistema apresenta uma lista das categorias, cada uma representada pelo seu nome e por uma imagem.

==== Consulta dos lotes ganhos

Requisitos do utilizador:
  + O utilizador escolhe visualizar os lotes que ganhou.
  + Pode selecionar e visualizar um lote em específico.

Requisitos do sistema:
  + O sistema apresenta uma lista dos lotes.

==== Submeter um lote

Requisitos do utilizador:
  + O utilizador escolhe submeter um lote seu para ser leiloado com ajuda da empresa.

Requisitos do sistema:
  + O sistema pede: 
    - uma descrição detalhada: material, dono original, quem fez o item ou itens, quando foi feito, condição, assinaturas, etc.;
    - uma seleção de como é que foi obtido: comprado, herdado, encontrado, ou oferecido;
    - uma seleção das categorias a que pertence (presentes no sistema);
    - informações e documentos adicionais;
    - e imagens.
  + A informação submetida é guardada e fica numa fila de espera para verificação e aprovação por parte de especialistas.

==== Consultar lista de lotes submetidos

Requisitos do utilizador:
  + O utilizador escolhe visualizar a lista dos próprios lotes, podendo filtrar os resultados por "Todos os lotes"/ "Vendidos"/ "Em leilão"/ "Sem leilão"/ "Em verificação"/ "Em espera".
  + Um utilizador não pode entrar no leilão relativo ao seu lote.

Requisitos do sistema:
  + O sistema apresenta a lista de lotes de acordo com os filtros e com paginação, se necessário.

==== Entrar num leilão

Requisitos do utilizador:
  + Quando a data de início é atingida, o leilão começa e é feita uma fila de espera para os utilizadores escolherem entrar no leilão. 

Requisitos do sistema:
  + O sistema regista que o utilizador irá participar no leilão e é adicionado a uma lista visível para outros utilizadores.
  + O número de utilizadores a participar no leilão é incrementado -- este número também é visível para todos os utilizadores.

==== Funcionamento/ Sair do leilão

Requisitos do utilizador:
  + Durante o intervalo de tempo definido, o utilizador escolhe ou não sair do leilão. 

Requisitos do sistema:
  + Caso o utilizador queira continuar no leilão, passa para a próxima ronda.
  + Caso o utilizador não queira continuar no leilão, insere um valor que esteja no intervalo atual (por exemplo, caso queiram sair numa ronda em que o valor seja 300 e o valor de incremento 50, têm de escolher um valor entre 250 e 299), i.e., uma _sealed-bid_ final. 
  + Caso um utilizador não escolha, sairá do leilão automaticamente com uma _sealed-bid_ de valor mínimo.
  + Se restar apenas uma pessoa numa ronda, essa pessoa ganha e paga o segundo valor mais alto das _sealed-bids_ da ronda anterior.
  + Se todas as pessoas restantes saírem numa ronda, ganha a que tiver o maior valor na sua _sealed-bid_ final, e paga o segundo valor mais alto. Neste caso, o desempate é feito com base no tempo de submissão da _sealed-bid_ final.
  + O sistema utiliza um ascending-clock que a cada determinado intervalo de tempo (por exemplo, 3 minutos), incrementa um determinado valor.
  + O sistema disponibiliza a lista de utilizadores a participar, e o seu número total, em tempo real.
  + O sistema fornece uma opção de sair do leilão.
  + O sistema regista as entradas e saídas do leilão, tal como os valores submetidos na saída e o respetivo _timestamp_.
  + Todos os acontecimentos do leilão são guardados num _log_ automaticamente pelo sistema.

==== Página de gestão do sistema

Requisitos do utilizador:
  + O utilizador tem de ser administrador para ter acesso a estas funcionalidades de gestão do sistema.

Requisitos do sistema:
  + O sistema disponibiliza opções de gestão de leilões, de lotes e de utilizadores. (Requisitos 18, 21, 23.)

==== Página de gestão de leilões

Requisitos do utilizador:
  + O administrador escolhe visualizar a página de gestão de leilões a partir da página de gestão do sistema principal.

Requisitos do sistema:
  + O sistema fornece uma opção de criação de um novo leilão.
  + O sistema fornece uma lista dos leilões, os quais podem ser editados ou removidos.
  + O sistema fornece uma lista de leilões a decorrer.

==== Criação de um leilão

Requisitos do utilizador:
  + O administrador escolhe criar um leilão na página de gestão de leilões.

Requisitos do sistema:
  + O sistema pede o nome e o tema do leilão, uma descrição, uma data de início, uma escolha entre "início automático" ou "início manual", e o intervalo de tempo do _ascending clock_.
  + O sistema apresenta um conjunto de lotes que não pertencem a outros leilões, os quais podem ser filtrados (por exemplo, por categoria) e que podem ser selecionados para fazerem parte do leilão a ser criado.

==== Página de gestão de lotes 

Requisitos do utilizador:
  + O administrador pode escolher visualizar a lista de lotes submetidos por verificar, e de lotes aprovados com e sem leilões.
  + Pode criar, editar (por exemplo, associando-o a um leilão) ou remover um lote.

Requisitos do sistema:
  + O sistema disponibiliza a lista de lotes por verificar e verificados.
  + O sistema permite adicionar ou remover lotes verificados de um leilão.
  + O sistema permite a verificação e aprovação de um lote.

==== Aprovação de um lote

Requisitos do utilizador:
  + O administrador seleciona um lote.
  + O administrador pode aprovar ou não aprovar.

Requisitos do sistema:
  + O sistema envia uma notificação ao utilizador a informar se o lote foi aprovado ou não.
  + Caso tenha sido aprovado, são enviadas informações acerca do envio do seu lote.
  + O lote passa a estar com estado de "espera" até chegar ao armazém da empresa.

=== Chegada de um item (ou conjunto de itens)

Requisitos do utilizador:
  + Funcionário ou administrador indicam que um lote já pode ser leiloado, estando presente no armazém e catalogado.

Requisitos do sistema:
  + O sistema muda o estado do lote de "em espera" para "disponível".

==== Página de gestão de utilizadores

Requisitos do utilizador:
  + O administrador escolhe gerir os utilizadores do sistema.

Requisitos do sistema:
  + O sistema fornece uma lista de todos os utilizadores (com paginação, se necessário), e uma opção de pesquisa e de filtragem de resultados.
  + O sistema permite notificar, editar, banir e remover utilizadores.

=== Requisitos não funcionais

  + O sistema, e, portanto, o servidor, deverá estar operacional 24 horas por 7 dias da semana, ou seja, sempre em funcionamento.
  + O sistema deverá possuir documentação adequada acerca do seu funcionamento e implementação.

#set enum(indent: 0pt)

== Validação dos requisitos

Após a execução dos métodos de levantamento estabelecidos, procedemos à organização e análise detalhada de todos os requisitos identificados. Este processo teve como objetivo eliminar quaisquer erros, inconsistências, redundâncias ou ambiguidades presentes no documento final, garantindo assim a sua integridade e completude. \
Na reunião subsequente, todos os membros participaram ativamente na discussão detalhada, validando e aprovando coletivamente os requisitos em conformidade com as expectativas do projeto.

= Especificação e Modelação do Software

== Apresentação geral da especificação

Esta secção pretende formar uma visão abrangente do sistema, detalhando tanto os aspetos estruturais como os aspetos comportamentais. Para isso, é utilizado  um modelo de domínio, um diagrama de casos de uso, os respetivos casos de uso estruturados, e diagramas de atividade.
Verificar-se-á que o sistema tem três elementos fundamentais: o utilizador, o leilão e o lote.

== Aspetos estruturais

=== Modelo de domínio

\
#figure(
  caption: "Modelo de domínio",
  kind: image,
  image("images/modelo_de_dominio.png", width: 75%)
)

Este modelo descreve o problema, não uma solução, sendo o seu objetivo explicitar o contexto em que o sistema irá agir, a estrutura essencial do problema tendo em conta os requisitos recolhidos e organizados.
Assim, é descrito que os utilizadores possuem um registo, o qual é identificado por um email único. A este registo pode estar associado um ou mais métodos de pagamento, e uma ou mais moradas de faturação e de envio. Um registo pode ter permissões comuns ou de administrador, e possui uma lista de notificações (acerca de leilões, de atualizações dos estados das submissões, de lotes ganhos, etc.) e uma lista de favoritos (leilões, categorias, artistas, e lotes).

Um utilizador pode submeter um ou mais itens, que será considerado um lote, e quando é verificado e aprovado, pode ser enviado para um armazém da empresa e depois devidamente catalogado, passando a estar disponível para pertencer a um leilão.
Um lote, tal como já foi descrito antes com mais detalhe, está associado a uma ou mais categorias e artistas, possui os valores das comissões de comprador e de vendedor, um número identificador, um preço inicial, um valor de incremento intervalar, e um estado (vendido, em leilão, disponível, em espera, e em verificação).

Por fim, o leilão tem uma data de início, e uma fila de espera com uma determinada duração de tempo (para cada lote). Como é um _ascending clock auction_, possui um relógio que incrementa o valor do lote de acordo com um intervalo de tempo predeterminado. Num leilão podem ser leiloados um ou mais lotes. Quando um utilizador quer sair do leilão de um lote, faz uma _sealed bid_ final.

// === Diagrama de classes
// talvez -- não desconta se não o fizermos

== Aspetos comportamentais

=== Diagramas de casos de uso

\

#figure(
  caption: "Diagrama de casos de uso - Conta do utilizador",
  kind: image,
  image("images/diagrama_casos_de_uso_conta_utilizador.png", width: 60%)
) <uc_conta_utilizador>

\

#figure(
  caption: "Diagrama de casos de uso - Consultas",
  kind: image,
  image("images/diagrama_casos_de_uso_consultas.png", width: 100%)
) <uc_consultas>

\

#figure(
  caption: "Diagrama de casos de uso - Funcionamento dos lotes",
  kind: image,
  image("images/diagrama_casos_de_uso_funcionamento_lotes.png", width: 70%)
) <uc_funcionamento_lotes>

\

#figure(
  caption: "Diagrama de casos de uso - Funcionamento dos leilões",
  kind: image,
  image("images/diagrama_casos_de_uso_funcionamento_leilao.png", width: 80%)
) <uc_funcionamento_leilao>

\

=== Casos de uso

#set list(marker: [·])
#let s() = {
  h(3pt)
}

#[

#show ref: it => if it.element != none and it.element.func() == heading {
  "«include» " + it.element.body
} else {
  it
}

==== Conta do utilizador

===== Criar conta <criar_conta>

- *Descrição*: Cria uma nova conta de utilizador.
- *Pré-condição*: True.
- *Pós-condição*: O sistema regista a conta do utilizador.
- *Fluxo normal*:
  + O sistema pede para introduzir o seu nome completo, email e palavra-passe.
  + O cliente escreve essas informações.
  + O sistema verifica se as informações são válidas.
  + O sistema pergunta ao utilizador se quer inserir um método de pagamento e morada.
  + O cliente escolhe inserir esses dados.
  + O sistema pede ao cliente para introduzir um método de pagamento e uma morada de envio e de faturação.
  + O cliente indica um método de pagamento e uma morada de envio e de faturação.
  + O sistema valida o método de pagamento e as moradas.
  + O cliente é registado no sistema.
  // + O sistema envia um email de verificação. // ?
- *Fluxo alternativo (1)*: [Email já registado no sistema] (passo 3) \
  3.1. #s() O sistema avisa que o email já está registado. \
  3.2. #s() Regressa ao passo 1. \
- *Fluxo alternativo (2)*: [Palavra-passe inválida] (passo 3) \
  3.1. #s() O sistema avisa que a palavra-passe é inválida e o motivo. \
  3.2. #s() Regressa ao passo 1. \
- *Fluxo alternativo (3)*: [Cliente escolhe não inserir método de pagamento] (passo 5) \
  4.1. #s() Avança para o passo 9. \
- *Fluxo alternativo (4)*: [Método de pagamento ou morada inválida] (passo 8) \
  8.1. #s() O sistema avisa que os dados são inválidos. \
  8.2. #s() Regressa ao passo 6. \

===== Login

- *Descrição*: Utilizador entra no sistema.
- *Pré-condição*: O utilizador está registado no sistema.
- *Pós-condição*: O utilizador fica autenticado, podendo utilizar mais funcionalidades do sistema.
- *Fluxo normal*:
  + O utilizador fornece o seu email e a palavra-passe.
  + O sistema verifica se o email e palavra-passe são válidos.
  + O utilizador fica autenticado.
- *Fluxo alternativo (1)*: [Email ou palavra-passe inválida] (passo 2) \
  2.1. #s() O sistema verifica que o email não está registado ou que o email está registado e a palavra-passe é inválida. \
  2.2. #s() Regressa ao passo 1.

===== Redefinir palavra-passe

- *Descrição*: O utilizador redefine a sua palavra-passe.
- *Pré-condição*: O utilizador está registado e autenticado.
- *Pós-condição*: As mudanças são guardadas no sistema.
- *Fluxo normal*:
  + O utilizador acede ao seu perfil e escolhe redefinir a sua palavra-passe.
  + O sistema pede que a sua palavra passe atual e a nova sejam inseridas.
  + O cliente insere esses dados.
  + O sistema valida os dados.
  + A palavra-passe do utilizador é a atualizada no sistema.
- *Fluxo alternativo (1)*: [Dados inválidos] (passo 4) \
  4.1. #s() O sistema avisa que a palavra-passe é inválida. \
  4.2. #s() Regressa ao passo 2.

===== Adicionar novo método de pagamento

- *Descrição*: O utilizador adiciona um novo método de pagamento.
- *Pré-condição*: O utilizador está registado e autenticado.
- *Pós-condição*: As mudanças são guardadas no sistema.
- *Fluxo normal*:
  + O utilizador acede ao seu perfil e escolhe adicionar um novo método de pagamento.
  + O sistema pede para escolher o tipo de método de pagamento (cartão ou ACH).
  + O utilizador escolhe o tipo e insere os parâmetros necessários para esse tipo.
  + O sistema valida os dados inseridos.
  + O sistema guarda o método de pagamento adicionado.
- *Fluxo alternativo (1)*: [Dados inválidos] (passo 4) \
  4.1. #s() O sistema avisa que os dados inseridos são inválidos. \
  4.2. #s() Regressa ao passo 2.

===== Adicionar nova morada

- *Descrição*: O utilizador adiciona uma nova morada.
- *Pré-condição*: O utilizador está registado e autenticado.
- *Pós-condição*: As mudanças são guardadas no sistema.
- *Fluxo normal*:
  + O utilizador acede ao seu perfil e escolhe adicionar uma morada.
  + O sistema pede o tipo de morada, e os seus dados.
  + O utilizador escolhe o tipo de morada, de envio e/ou de faturação, e insere os respetivos dados.
  + O sistema valida a morada.
  + A morada é adicionada ao registo do utilizador.
- *Fluxo alternativo (1)*: [Dados inválidos] (passo 4) \
  4.1. #s() O sistema avisa que um ou mais dos parâmetros é inválido. \
  4.2. #s() Regressa ao passo 2.

==== Consultas

===== Pesquisar

- *Descrição*: O utilizador utiliza a funcionalidade de pesquisa do sistema.
- *Pré-condição*: True.
- *Pós-condição*: O sistema mostra um resultado, se existir.
- *Fluxo normal*:
  + O utilizador insere os termos de pesquisa.
  + Opcionalmente, adiciona filtros (artista, lote, categoria ou leilão).
  + Opcionalmente, adiciona opções de ordenação (preço, popularidade, relevância, início mais próximo, adicionados recentemente).
  + O sistema processa a consulta e procura por correspondências nos dados armazenados.
  + O sistema apresenta uma lista de resultados.
- *Fluxo alternativo (1)*: [Não existem resultados] (passo 5) \
  5.1. #s() O sistema informa que não existem resultados correspondentes à pesquisa.

===== Consulta de um lote <consulta_de_um_lote>

- *Descrição*: O utilizador escolhe consultar um lote.
- *Pré-condição*: True.
- *Pós-condição*: O sistema apresenta os dados relativos ao lote.
- *Fluxo normal*:
  + O utilizador seleciona um lote.
  + O sistema mostra os dados relativos ao lote.
  + Opcionalmente, o utilizador adiciona o lote à sua lista de favoritos.
  + Opcionalmente, o utilizador decide consultar o leilão desse lote.
- *Fluxo alternativo (1)*: [Utilizador não registado] (passo 3) \  // não é de exceção pois a pós-condição é cumprida mesmo assim 
  3.1. #s() O sistema avisa que o utilizador precisa de estar registado para adicionar o lote à lista de favoritos.\
  3.2. #s() @criar_conta

===== Consulta de um leilão

- *Descrição*: O utilizador escolhe consultar um leilão.
- *Pré-condição*: True.
- *Pós-condição*: O sistema apresenta os dados relativos ao leilão.
- *Fluxo normal*:
  + O utilizador seleciona um leilão.
  + O sistema apresenta os dados relativos ao leilão, e uma listagem dos seus itens com opções de filtragem e de ordenação.
- *Fluxo alternativo (1)*: [Utilizador decide consultar um lote] (passo 2) \
  2.1. #s() @consulta_de_um_lote

===== Consulta das listas de favoritos <consulta_das_listas_de_favoritos>

- *Descrição*: O utilizador escolhe consultar a sua lista de favoritos.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: O sistema apresenta a lista de favoritos solicitada.
- *Fluxo normal*:
  + O utilizador seleciona a opção de aceder às suas listas de favoritos.
  + O sistema apresenta as diferentes listas: de lotes, de leilões, de artistas e de categorias.
  + O utilizador seleciona uma das listas.
  + O sistema apresenta essa lista.

===== Remoção de um item da lista de favoritos

- *Descrição*: O utilizador escolhe remover um item da lista de favoritos.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: O item é retirado da lista.
- *Fluxo normal*:
  + @consulta_das_listas_de_favoritos
  + O utilizador seleciona o item que quer remover e indica a ação de remoção.
  + O sistema remove o item da lista.
- *Fluxo de exceção (1):* [Não existem itens para remover] (passo 1) \
  1.1. #s() O sistema não fornece a opção de remoção de itens.

===== Consulta das notificações

- *Descrição*: O utilizador consulta as notificações disponíveis.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: O sistema apresenta as notificações, se existirem.
- *Fluxo normal*:
  + O utilizador seleciona a opção de visualizar as suas notificações.
  + O sistema apresenta as notificações.
  + O utilizador seleciona uma notificação.
  + O sistema mostra os dados relativos a essa notificação.
- *Fluxo alternativo 1*: [Não existem notificações] (passo 2) \
  2.1. #s() O sistema informa que não existem notificações.

===== Consulta das categorias

- *Descrição*: O utilizador consulta as categorias presentes no sistema.
- *Pré-condição*: True.
- *Pós-condição*: O sistema apresenta a lista de categorias.
- *Fluxo normal*:
  + O utilizador escolhe consultar as categorias.
  + O sistema apresenta uma listagem das categorias, identificadas pelo seu nome.
- *Fluxo alternativo (1)*: [Utilizador escolhe consultar uma categoria] (passo 2) \
  2.1. #s() @consulta_de_uma_categoria

===== Consulta de uma categoria <consulta_de_uma_categoria>

- *Descrição*: O utilizador consulta uma categoria.
- *Pré-condição*: True.
- *Pós-condição*: O sistema apresenta os dados da categoria.
- *Fluxo normal*:
  + O utilizador seleciona uma categoria.
  + O sistema mostra uma listagem dos lotes nessa categoria (uma pesquisa com filtragem por essa categoria).

===== Consulta dos lotes ganhos

- *Descrição*: O utilizador consulta os seus lotes ganhos.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: O sistema apresenta os lotes ganhos do utilizador.
- *Fluxo normal*:
  + O sistema apresenta uma uma listagem dos lotes ganhos.
- *Fluxo alternativo (1)*: [Consulta de um lote ganho] (passo 1) \
  1.1. #s() @consulta_de_um_lote \
- *Fluxo de exceção (1):* [Não existem lotes ganhos] (passo 1) \
  1.1. #s() O sistema informa que não existem lotes ganhos.

===== Consulta dos lotes submetidos

- *Descrição*: O utilizador consulta os lotes que submeteu.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: O sistema apresenta os lotes que o utilizador submeteu.
- *Fluxo normal*:
  + O sistema apresenta uma listagem dos lotes submetidos e o seu estado.
- *Fluxo alternativo (1)*: [Utilizador seleciona um lote] (passo 1) \
  1.1. #s() O sistema mostra a informação que o utilizador forneceu acerca desse lote, o seu estado e outras informações (em verificação, em espera, se pertence a um leilão, histórico, utilizador que ganhou o lote, etc.). \
- *Fluxo de exceção (1)*: [Não existem lotes submetidos] (passo 1) \
  1.1. #s() O sistema informa que não existem lotes submetidos.

===== Consulta da página de gestão do sistema

- *Descrição*: O administrador acede à àrea de gestão dos sistema.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: True.
- *Fluxo normal*:
  + O sistema fornece uma área de gestão de leilões.
  + O sistema fornece uma área de gestão de utilizadores.
  + O sistema fornece uma área de gestão de lotes (incluindo submissões).

==== Funcionamento dos lotes

===== Submeter um lote 

- *Descrição*: O utilizador submete um lote, fornecendo uma série de informações necessárias, e que depois serão verificadas.
- *Pré-condição*: O utilizador está registado e autenticado no sistema.
- *Pós-condição*: A submissão é feita com sucesso, e colocada numa fila de submissões do sistema.
- *Fluxo normal*:
  + O sistema pede uma descrição detalhada.
  + O sistema apresenta uma seleção obrigatória de como é que o item foi obtido.
  + O sistema pede uma seleção de categorias a que o lote pertence.
  + O sistema pede informações e documentos adicionais, e imagens.
  + O cliente fornece os dados necessários.
  + O sistema valida os dados.
  + O sistema guarda a submissão, e é marcada como "em verificação."
- *Fluxo alternativo (1)*: [Dados inválidos ou em falta] (passo 6) \
  6.1. #s() O sistema informa que um ou mais dados são inválidos ou estão em falta. \
  6.2. #s() Regressa ao passo 1.

===== Aprovar submissão

- *Descrição*: Um administrador aprova uma submissão.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: A submissão é aprovada.
- *Fluxo normal*:
  + O administrador aprova uma submissão selecionada.
  + O sistema envia uma notificação ao utilizador a informar a aprovação.
  + O sistema cria o lote automaticamente, permitindo ao administrador de seguida editá-lo. (@editar_um_lote)
  + O sistema coloca o lote com estado "em espera", e com visibilidade "privado".
- *Fluxo de exceção (1)*: [O administrador não aprova a submissão] (passo 1) \
  1.1. #s() O administrador não aprova o lote selecionado. \
  1.2. #s() O sistema envia uma notificação ao utilizador a informar que lote não foi aprovado. \
  1.3. #s() O sistema marca o lote como "recusado". \

===== Criar um lote <criar_lote>

- *Descrição*: Um administrador cria um lote.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: O lote é criado e guardado no sistema.
- *Fluxo normal*:
  + O sistema adiciona um número identificador ao lote automaticamente.
  + O sistema pede um nome, uma descrição, e imagens (opcional).
  + O sistema pede uma seleção de categorias.
  + O sistema pede uma seleção de estado e de visibilidade (com _default_: "em espera" e "privado").
  + O sistema pede para associar a um leilão (opcional).
  + O administrador fornece esses dados.
  + O sistema valida os dados.
  + O lote é guardado no sistema.
- *Fluxo alternativo (1)*: [Dados inválidos ou em falta] (passo 7) \
  7.1. #s() O sistema informa que um ou mais dados são inválidos ou estão em falta. \
  7.2. #s() Regressa ao passo 1.

===== Editar um lote <editar_um_lote>

- *Descrição*: Um administrador edita um lote.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: O alterações feitas no lote são guardadas no sistema.
- *Fluxo normal*:
  + O sistema fornece os campos de edição do lote.
  + O administrador edita os campos que achar necessário.
  + O administrador sumbte as alterações.
  + O sistema valida as alterações.
  + O sistema guarda as alterações.
- *Fluxo alternativo (1)*: [Alterações inválidas] (passo 4) \
  4.1. #s() O sistema informa que as alterações feitas são inválidas. \
  4.2. #s() Regressa ao passo 1.

==== Funcionamento de um leilão

===== Entrar num leilão 

- *Descrição*: O utilizador entra num leilão.
- *Pré-condição*: O utilizador não está a participar noutro leilão ao mesmo tempo. O utiliza está registado e autenticado no sistema.
- *Pós-condição*: O utilizador é adicionado à fila de espera.
- *Fluxo normal*:
  + O utilizador indica que quer entrar no leilão.
  + O sistema adiciona o utilizador à fila de espera.
  + O sistema informa que o utilizador entrou no leilão.
  + O sistema apresenta a lista de utilizadores na fila de espera e a sua contagem.
- *Fluxo de exceção (1)*: [Sistema não permite entrada] (passo 2) \
  2.1. #s() O sistema informa que a fila está cheia, ou que o tempo de entrada já passou.

===== Sair de um leilão <sair_do_leilão>

- *Descrição*: O utilizador decide sair do leilão de um lote.
- *Pré-condição*: O utilizador está registado e autenticado no sistema. O utilizador está na fila de espera do leilão desse lote.
- *Pós-condição*: O utilizador sai do leilão.
- *Fluxo normal*:
  + O sistema apresenta a fila dos participantes em tempo real.
  + A cada intervalo de tempo predefinido, o sistema aumenta o valor do lote de acordo com o seu valor de incremento.
  + O utilizador escolhe sair nesse intervalo de tempo.
  + O sistema pede que seja inserida uma licitação privada final que esteja no intervalo do valor atual.
  + O utilizador insere um valor.
  + O sistema regista a saída do utilizador.
- *Fluxo alternativo (1)*: [O utilizador não insere um valor no intervalo de tempo devido] (passo 5) \
  5.1. #s() O sistema retira o utilizador do leilão, registando a saída com uma licitação final de valor mínimo.

===== Ganhar um lote

- *Descrição*: O utilizador ganha um lote num leilão.
- *Pré-condição*: O utilizador está registado e autenticado no sistema. O utilizador está registado como participante no leilão.
- *Pós-condição*: O utilizador ganha o lote.
- *Fluxo normal*:
  + O utilizador escolhe sair do leilão. (@sair_do_leilão)
  + Sendo o último utilizador restante, ganha o lote e paga o segundo valor mais alto das licitações privadas e finais da ronda anterior.
- *Fluxo alternativo (1)*: [Todos os utilizadores restantes também escolhem sair] (passo 2) \
  2.1. #s() O utilizador ganha por ter o maior valor de licitação privada e final, pagando o segundo valor mais alto das licitações feitas nessa ronda. \
- *Fluxo alternativo (1.2)*: [Empate nas licitações finais] (passo 2.1) \
  2.1.1. #s() O utilizador ganha por ter o menor tempo de saída registado.

===== Criar um leilão

- *Descrição*: Um administrador cria um leilão.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: A criação do leilão é efetuada no sistema.
- *Fluxo normal*:
  + O sistema pede o nome do leilão, o tema, a data de início, o tipo de inicialização (automática ou manual), o intervalo de tempo de cada ronda, e a visibilidade.
  + O administrador insere esses dados.
  + O sistema valida os dados inseridos.
  + O sistema fornece uma lista de lotes disponíveis/ sem leilão, com opções de filtragem. // fornece pre-visualizações de itens (?)
  + O administrador seleciona um ou mais lotes, e submete.
  + O sistema valida a submissão.
  + O leilão é criado e guardado no sistema.
- *Fluxo alternativo (1)*: [Dados inválidos] (passo 3) \
  3.1. #s() O sistema informa que os dados inseridos são inválidos/ estão em falta. \
  3.2. #s() Regressa ao passo 1. \
- *Fluxo alternativo (2)*: [Administrador não selecionou] (passo 5) \
  5.1. #s() O sistema informa que é necessário selecionar um ou mais itens para criar um leilão. \
  5.2. #s() Regressa ao passo 4.

===== Editar um leilão 

- *Descrição*: Um administrador edita os dados de um leilão.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: As alterações feitas são guardadas.
- *Fluxo normal*: 
  + O sistema apresenta os parâmetros que podem ser editados.
  + O sistema fornece uma lista dos lotes do leilão, podendo ser removidos.
  + O sistema fornece uma opção de selecionar novos lotes ao leilão, fornecendo uma lista dos lotes disponíveis, com opções de filtragem.
  + O administrador efetua e submete as suas edições.
  + O sistema valida as edições feitas.
  + O sistema guarda as alterações, e envia uma notificação acerca das alterações feitas aos utilizadores que têm o leilão na lista de favoritos.
- *Fluxo alternativo (1)*: [As edições não são válidas] (paso 6) \
  6.1. #s() O sistema informa que as edições feitas não são válidas. \
  6.2. #s() Regressa ao passo 1.
 
===== Remover um leilão

- *Descrição*: Um administrador remove um leilão.
- *Pré-condição*: O utilizador está registado e autenticado como administrador.
- *Pós-condição*: O leilão é removido do sistema.
- *Fluxo normal*:
  + O administrador seleciona um leilão, e escolhe removê-lo.
  + O sistema pede a sua palavra-passe.
  + O administrador insere a sua palavra-passe.
  + O sistema valida a palavra-passe.
  + O leilão é removido do sistema.
  + O sistema envia notificações para os utilizadores que têm o leilão na lista de favoritos acerca da sua remoção.
  + Os dados do leilão removido são guardados em ficheiros _backup_.
- *Fluxo de exceção (1)*: [Palavra-passe não é válida] (passo 4) \
  4.1. #s() O sistema informa que a palavra-passe não é válida.

]

// === Diagramas de atividade (acho que não vai haver tempo)

= Conceção do Sistema de Dados

== Apresentação geral das estrutura do sistema de dados

\

#figure(
  caption: "Modelo lógico da base de dados",
  kind: image,
  image("images/modelo_logico.png", width: 90%)
)


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