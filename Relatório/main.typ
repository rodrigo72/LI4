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

Alexandre Sousa, um empreendedor calculoso, começou a sua carreira como um contabilista certificado, e com o passar do tempo ficou reconhecido na sua área de trabalho. Possui uma postura calma; no entanto, o seu entusiasmo por vezes interrompe essa serenidade, o que resulta num carisma supreendente. Estas características, juntamente com a sua capacidade de liderança, levou-o a formar uma empresa que, posteriormente, obteve bastante sucesso a nível internacional.

Décadas mais tarde, em 2018, Alexandre vendeu a sua parte da empresa, e deixou o cargo de diretor. Assim, com 51 anos de idade, decidiu afastar-se da vida profissional. Apesar disso, continuou a direcionar a sua atenção para o surgimento de novas empresas e modelos de negócio da indústria. Afinal, sempre almejou aprender e empenhar-se nas áreas que mais admirava. 

Em 2021, encontrou um domínio que instigou particularmente o seu interesse: leilões. Levado por essa vontade, estudou teoria de leilões, começando com os livros e artigos de Paul Klemperer, até chegar, por fim, ao estudo e análise do desenvolvimento e design de leilões. Então, depois de três anos, decidiu começar uma nova empresa, desta vez de leilões online. Determinou, também, que a área de negócio seria “music memorabilia & vinyls”, inspirada no seu hobby de colecionar vinis exclusivos, e na sua afeição à música. 

Agora, em 2023, Alexandre reúne uma equipa: um gestor e um administrador de leilões, um especialista em vinis, um especialista em marketing, fotógrafos, assistentes e catalogadores. Para além disso, para o desenvolvimento do sistema, contrata uma empresa de desenvolvimento de software.



== Fundamentação

== Objetivos

== Viabilidade

== Equipa de trabalho

== Plano de execução do trabalho

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

<\<Apresentar a lista de referências bibliográficas referidas ao longo do relatório; recomenda-se a utilização do formato Harvard - http://libweb.anglia.ac.uk/referencing/harvard.htm>>

<\<O Typst tem suporte nativo a listagem de referências. 
Veja mais sobre aqui: https://typst.app/docs/reference/meta/bibliography/.>>

#heading(numbering: none)[Lista de Siglas e Acrónimos]

/ BD: Base de Dados
/ DW: Data Warehouse
/ OLTP: On-Line Analyical Processing

#heading(numbering: none)[Anexos]
<\<Os anexos deverão ser utilizados para a inclusão de informação adicional necessária para uma melhor compreensão do relatório o para complementar tópicos, secções ou assuntos abordados. Os anexos criados deverão ser numerados e possuir uma designação. Estes dados permitirão complementar o Índice geral do relatório relativamente à enumeração e apresentação dos diversos anexos.>>

#attachment(caption: "Logo da Universidade do Minho", image("images/uminho.png"))