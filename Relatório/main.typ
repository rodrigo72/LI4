#import "cover.typ": cover
#import "template.typ": *

#show: project

#cover(title: "Music Memorabilia Online Auction", authors: (
  (name: "Rodrigo Monteiro", number: "a100706"), 
  (name: "Miguel Gramoso", number: "a100835"), 
  (name: "Luís Figueiredo", number: "a100549")), 
  "Setembro, 2023")

#set page(numbering: "i", number-align: center)
#counter(page).update(1)

#heading(numbering: none, outlined: false)[Resumo]
<\<O resumo tem como objectivo descrever de forma sucinta o trabalho realizado. Deverá conter uma pequena introdução, seguida por uma breve descrição do trabalho realizado e terminando com uma indicação sumária do seu estado final. Não deverá exceder as 400 palavras.>>   

\

*Área de Aplicação*: <\<Identificação da Área de trabalho. Por exemplo: Desenho e arquitectura de Sistemas de Bases de Dados.>>

*Palavras-Chave*: <\<Conjunto de palavras-chave que permitirão referenciar domínios de conhecimento, tecnologias, estratégias, etc., directa ou indirectamente referidos no relatório. Por exemplo: Bases de Dados Relacionais, Gestão de Índices, JAVA, Protocolos de Comunicação.>>

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

Agora, em 2023, Alexandre reúne uma equipa: um gestor e um administrador de leilões, um especialista em vinis, um especialista em marketing, fotógrafos, assistentes e catalogadores. Para além disso, para o desenvolvimento do sistema, contrata uma empresa de desenvolvimento de software.


== Fundamentação

Depois de ter obtido conhecimento teórico acerca de leilões, o seu interesse não terminou. Então, após falar com diversos especialistas na área, determinou que seria uma boa decisão colocar uma das suas ideias em prática.
Estando já familiarizado com o mercado de leilões relacionados a música, tradicionais e online, e possuindo ele próprio uma extensa de coleção de vinis --- maioritariamente de jazz --- encarou esta decisão como uma oportunidade para juntar duas das suas áreas de interesse e para voltar à vida profissional, que tivera anos atrás, com entusiasmo. Além disso, reconheceu e concluiu que um leilão online traria muitas vantagens em comparação a um tradicional.


== Objetivos

Portanto, definiu um conjunto de objetivos, alinhados com a sua ética de trabalho, que pretende atingir com a sua nova empresa.\ \
- Estabelecer um valor baixo para a comissão do comprador (“buyer's premium”) e para a comissão de venda (“sales commission”), i.e., entre 15% e 20% @auction_houses_comparison_table.
- Fazer um sistema honesto e seguro através de diversos  mecanismos: utilização de um tipo de leilão que siga esse princípios; manutenção de uma base de dados acerca dos produtos vendidos, ou à venda no mercado, atualizada por assistentes e até por alguns utilizadores selecionados; verificação da autenticidade dos vendedores e dos compradores, e verificação da sua identidade; método de avaliação de vendedores e compradores no sistema.
- Obter uma comunidade distribuída geograficamente.
- Desencorajar comportamentos colusivos, e predatórios @auction_design_article.
- Preservar e valorizar a história musical dos artigos.
- Vender artigos assinados ou com dedicatórias, vinis de edições exclusivas, antigas ou limitadas, itens pessoais, adereços, roupas ou instrumentos utilizados pelos artistas em vídeos ou concertos, prémios musicais, entre outros.
- Obter um sistema capaz de suportar a interação com um grande número de clientes em simultâneo, sem latência ou outros problemas técnicos.
- Obter um sistema que permita a gestão dos eventos por parte de administradores e assistentes.


== Viabilidade

Como a ideia visiona um leilão online, inúmeras vantagens provêm desse facto: os custos de transação para os compradores e vendedores diminuem, podem ser aceites diversos métodos de pagamento, podem existir leilões de duração ininterrupta, a exibição e descrição detalhada de produtos torna-se simples e facilmente acessível, e uma plataforma digital facilita a realização de leilões complexos e simultâneos, e amplia a participação, sendo que a localização geográfica dos participantes deixa de ser um obstáculo --- uma grande mudança em relação aos leilões tradicionais.

Para além disso, há uma oferta limitada de leilões online nesta área de negócio, o que é surpreendente, visto que a música é uma forma de entretenimento consumida pela maioria das pessoas, desde a rádio até às trilhas sonoras dos filmes. Por consequência desta magnitude, o conjunto de pessoas com uma forte conexão ao mundo da música é significativo, e, portanto, origina a necessidade de existirem empresas nesta área de negócio.

Por fim, como a maioria dos clientes prefere métodos justos e honestos, será adotado um tipo de leilão que na teoria possui essas características, e este será customizado para se alinhar com o ambiente digital. Assim, não será utilizado, por exemplo, o “english auction”, mas sim um “ascending clock auction”, também chamado de leilão japonês (mas um pouco modificado).

/ Ascending clock auction: _In the model most commonly used by auction theorists, the price rises continuously while bidders gradually quit the auction. Bidders observe when their competitors quit, and once someone quits they are not let back in. There is no possibility for one bidder to preempt the process by making a large “jump bid”_ @paul_auction_theory_book.

Ou seja, o preço aumenta continuamente, talvez por intervalos de tempo, a partir de um preço inicial, e os participantes podem escolher sair. Esta ideia, apesar de tradicional, adequa-se ao ambiente digital pois o processo é muito mais simples do que, por exemplo, o de um "ascending-bid auction" normal, possuindo ainda assim características de um "general model" #footnote("Também existem outros tipos básicos de leilões como o \"descending-bid\", \"first-price sealed-bid\", e \"second-price sealed-bid\". Em teoria, mas tendo mais em consideração um \"private-value model\", o \"descending-bid\" é semelhante a um \"first-price sealed-bid\", sendo por vezes chamado de \"open first-price auction\". Da mesma forma, o \"ascending-bid\" (versão japonesa) é semelhante a um \"second-price auction\", tal como enuncia o \"revenue equivalence theorem\"."). Também serão utilizados alguns aspetos da "second-price sealed-bid", de uma forma semelhante ao leilão "Anglo-Dutch", que consegue capturar as vantagens do "sealed-bid auction" @auction_design_article.

== Recursos a utilizar



== Equipa de trabalho



== Plano de execução do trabalho

#figure(
  caption: "Diagrama de Gantt - Plano de execução",
  kind: image,
  image("images/plano_de_execuçao.jpg", width: 100%)
)

= Definição de Requisitos

== Apresentação da estratégia e método

== Descrição geral dos requisitos levantados

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