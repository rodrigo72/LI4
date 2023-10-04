#import "cover.typ": cover
#import "template.typ": *

#show: project

#cover(title: "Título", authors: (
  (name: "Aluno 1", number: "a100001"), 
  (name: "Aluno 2", number: "a100002"), 
  (name: "Aluno 3", number: "a100003")), 
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

= Sugestões para Escrita do Relatório

== Sugestões Gerais

<\<O presente documento deverá servir de base para a escrita do relatório do trabalho realizado.>>

<\<O tipo de letra a utilizar deverá ser Arial.. Porém recomenda-se em situações de escrita de excertos de programas a utilização do tipo de letra Courier New.>>

<\< Alguns estilos documento: Heading1, Heading2, Heading3, Normal e Footnote Text; foram especialmente modificados para os relatórios da presente disciplina.>>

<\<Os formatos e estilos de letra não devem estar constantemente a ser modificados ao longo do relatório. Tal situação dará origem a um relatório com um formato e apresentação muito heterogénea e com um aspecto pouco consistente.>>

== Termos Estrangeiros
<\<Os termos estrangeiros utilizados deverão ser apresentados num formato diferente do resto do texto, por exemplo: Data Warehouse (em itálico) ou "Data Warehouses" (entre aspas), devendo ser evitados sempre que se conheça uma tradução correcta para português. Para validação desses termos existem vários dicionários no mercado que poderão ser úteis.>>

== Tabelas e Figuras
<\<Caso seja necessário introduzir figuras ou tabelas no corpo do documento, estas devem seguir os formatos que se apresentam de seguida. Qualquer figura ou tabela deverá ter uma legenda associada, devendo esta estar correctamente apresentada no índice respectivo no início do relatório.>>

#figure(
  caption: "Ilustração de inserção de uma figura e legenda.",
  kind: image,
  image("images/example.png", width: 70%)
)

\

#figure(
  caption: "Ilustração de inserção de uma tabela e sua legenda.",
  kind: table,
  table(
    columns: 5 * (1fr,), 
    stroke: (dash: "densely-dotted", thickness: 0.75pt), 
    fill: (x, y) => if y == 0 { gray.lighten(50%) },
    [*Column 1*], [*Column 2*], [*Column 3*], [*Column 4*], [*Column 5*],
    [Column 1], [Column 2], [Column 3], [Column 4], [Column 5],
    [Column 1], [Column 2], [Column 3], [Column 4], [Column 5],
    [Column 1], [Column 2], [Column 3], [Column 4], [Column 5],
  )
)

= Conclusões e Trabalho Futuro

<\<Elaborar uma apreciação crítica sobre o trabalho realizado, apontando os seus pontos fortes e fracos. Adicionalmente, caso se aplique, enunciar eventuais tarefas a realizar futuramente ou novas opções para estender o trabalho realizado.>>

#heading(numbering: none)[Referências]
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