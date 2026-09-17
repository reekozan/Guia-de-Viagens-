# Guia de Viagens

Aplicação mobile desenvolvida em **Flutter e Dart** para apresentação de destinos turísticos. O projeto foi desenvolvido como atividade acadêmica, com foco na construção de interfaces, navegação entre telas, passagem de dados e organização das informações dos destinos.

## Sobre o projeto

O aplicativo apresenta uma experiência simples de consulta de destinos turísticos.

O usuário inicia na tela principal, onde encontra uma apresentação do aplicativo e o botão **"Ver destinos"**. A partir dele, é direcionado para uma lista de destinos disponíveis.

Ao selecionar uma cidade, o aplicativo abre uma tela de detalhes com informações específicas sobre o destino escolhido.

O fluxo da aplicação é:

```text
HomePage
   |
   | Ver destinos
   v
DestinosPage
   |
   | Seleciona um destino
   v
DetalhesPage
   |
   v
Dados do destino
```

## Funcionalidades

### Tela inicial

A `HomePage` apresenta:

* Logo da aplicação
* Título "Explore novos destinos"
* Texto introdutório
* Botão "Ver destinos"

O botão realiza a navegação para a tela de destinos utilizando `Navigator.push` e `MaterialPageRoute`.

### Lista de destinos

A `DestinosPage` apresenta os destinos disponíveis através de cards contendo:

* Nome da cidade
* Estado e país
* Ícone representativo
* Botão para acessar os detalhes

Destinos disponíveis:

* Curitiba — Paraná, Brasil
* Florianópolis — Santa Catarina, Brasil
* Campos do Jordão — São Paulo, Brasil

### Detalhes do destino

A `DetalhesPage` apresenta informações específicas sobre a cidade selecionada:

* Imagem do destino
* Nome da cidade
* Localização
* Descrição
* Clima
* Melhor época para visitar
* Tempo médio recomendado de permanência
* Principais atrações turísticas

O conteúdo da tela pode ser percorrido verticalmente utilizando `SingleChildScrollView`.

## Organização dos dados

As informações dos destinos são mantidas separadamente da interface no arquivo `dados_destino.dart`.

A função:

```dart
buscarDestino(String cidade)
```

recebe o nome da cidade selecionada e retorna um `Map<String, dynamic>` contendo as informações correspondentes.

Na `DetalhesPage`, a cidade recebida é utilizada para buscar os dados:

```dart
final dados = buscarDestino(cidade);
```

Com isso, a mesma tela de detalhes pode ser reutilizada para diferentes destinos, alterando apenas os dados apresentados.

## Navegação

A aplicação utiliza o sistema de navegação do Flutter através de `Navigator.push` e `MaterialPageRoute`.

O fluxo de navegação ocorre em duas etapas:

1. `HomePage` → `DestinosPage`
2. `DestinosPage` → `DetalhesPage`

Ao abrir a `DetalhesPage`, o nome da cidade é enviado através de um parâmetro do construtor:

```dart
const DetalhesPage(
  cidade: 'Curitiba',
)
```

A tela utiliza esse parâmetro para recuperar as informações correspondentes em `dados_destino.dart`.

## Estrutura do projeto

```text
lib/
├── main.dart
├── home_page.dart
├── destinos_page.dart
├── detalhes_page.dart
└── dados_destino.dart

assets/
└── images/
    ├── logo.png
    ├── curitiba.jpg
    ├── florianopolis.jpg
    └── campos_do_jordao.jpg
```

### `main.dart`

Responsável pela inicialização da aplicação.

Define o `MaterialApp`, configura o título, o tema visual e determina a `HomePage` como tela inicial.

### `home_page.dart`

Responsável pela tela inicial do aplicativo.

Apresenta o logo, uma breve descrição e o botão que direciona o usuário para a lista de destinos.

### `destinos_page.dart`

Responsável pela apresentação dos destinos disponíveis.

Cada destino é apresentado em um `Card` e possui um botão que realiza a navegação para a tela de detalhes.

### `detalhes_page.dart`

Responsável pela construção da tela de informações do destino selecionado.

Os dados são obtidos através da função `buscarDestino()`.

### `dados_destino.dart`

Responsável pelo armazenamento das informações dos destinos.

Contém a função `buscarDestino()`, que identifica a cidade recebida e retorna seus respectivos dados.

## Tecnologias utilizadas

* Flutter
* Dart

## Conceitos aplicados

### Construção de interfaces

Utilização de widgets do Flutter para estruturar e estilizar as telas:

* `Scaffold`
* `AppBar`
* `Center`
* `Padding`
* `Column`
* `Row`
* `Expanded`
* `SizedBox`
* `Card`
* `Text`
* `Icon`
* `IconButton`
* `ListTile`
* `Divider`
* `ElevatedButton`
* `Image.asset`
* `SingleChildScrollView`

### Navegação entre telas

Utilização de:

* `Navigator.push`
* `MaterialPageRoute`

para realizar a navegação entre as páginas da aplicação.

### Passagem de dados

A cidade selecionada é enviada para a `DetalhesPage` através de um parâmetro:

```dart
final String cidade;
```

Esse valor é utilizado para localizar as informações correspondentes no arquivo `dados_destino.dart`.

### Organização dos dados

Os dados dos destinos ficam separados da construção da interface.

As informações são organizadas utilizando:

* `Map<String, dynamic>`
* Listas
* Funções para busca dos dados

### Organização de layout

Foram utilizados `Column`, `Row` e `Expanded` para organizar os elementos da interface e distribuir o espaço disponível.

A `DetalhesPage` utiliza `SingleChildScrollView` para permitir a rolagem vertical do conteúdo.

### Utilização de assets

O projeto utiliza imagens armazenadas localmente na pasta `assets/images`, carregadas através do widget `Image.asset`.

### Uso de `const`

Diversos widgets estáticos utilizam `const`, evitando a reconstrução desnecessária desses elementos e seguindo as práticas recomendadas do Flutter.

## Interface

A aplicação utiliza componentes nativos do Flutter para criar uma interface simples e organizada.

A tela inicial apresenta o logo e uma chamada para exploração dos destinos.

A tela de destinos organiza cada cidade em um `Card`, enquanto a tela de detalhes divide as informações em diferentes seções.

A estrutura da tela de detalhes é organizada da seguinte maneira:

```text
Imagem do destino
       |
Localização
       |
Sobre o destino
       |
Informações rápidas
       |
Principais atrações
```

As informações rápidas são apresentadas em três blocos:

```text
Clima | Melhor época | Tempo médio
```

## Como executar

### Pré-requisitos

Para executar o projeto, é necessário ter instalado:

* Flutter SDK
* Dart SDK
* Android Studio ou Visual Studio Code
* Emulador Android ou dispositivo físico

### Executando o projeto

Clone o repositório:

```bash
git clone URL_DO_REPOSITORIO
```

Entre na pasta do projeto:

```bash
cd guia-de-viagens
```

Instale as dependências:

```bash
flutter pub get
```

Execute a aplicação:

```bash
flutter run
```

## Objetivo acadêmico

O projeto foi desenvolvido com o objetivo de aplicar conceitos fundamentais de desenvolvimento mobile utilizando Flutter e Dart, especialmente construção de interfaces, utilização de widgets, navegação entre telas, passagem de dados, utilização de assets e organização das informações utilizadas pela aplicação.

---

Projeto desenvolvido para fins acadêmicos.
