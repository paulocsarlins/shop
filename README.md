# Shop

Aplicativo de loja virtual desenvolvido em Flutter.

## Descrição

Este projeto é um aplicativo de e-commerce que permite aos usuários visualizar produtos, adicionar itens ao carrinho, realizar pedidos e gerenciar autenticação. O app foi desenvolvido com foco em boas práticas de arquitetura, utilizando o padrão Provider para gerenciamento de estado.

## Funcionalidades

- Listagem de produtos
- Visualização de detalhes do produto
- Adição e remoção de itens no carrinho
- Realização de pedidos
- Histórico de pedidos
- Autenticação de usuários (login e cadastro)

## Estrutura do Projeto

- `lib/` - Código principal do aplicativo
  - `components/` - Componentes reutilizáveis
  - `data/` - Dados e simulações
  - `exceptions/` - Exceções personalizadas
  - `models/` - Modelos de dados
  - `pages/` - Telas do aplicativo
  - `providers/` - Gerenciamento de estado
  - `utils/` - Utilitários e constantes
- `assets/` - Imagens e fontes
- `test/` - Testes automatizados

## Como Executar

1. Certifique-se de ter o [Flutter](https://flutter.dev) instalado.
2. Clone este repositório:
   ```sh
   git clone https://github.com/paulocsarlins/shop.git
   ```
3. Instale as dependências:
   ```sh
   flutter pub get
   ```
4. Execute o aplicativo:
   ```sh
   flutter run
   ```

## Requisitos

- Flutter 3.x ou superior
- Dart 2.17 ou superior

## Licença

Este projeto está licenciado sob a licença MIT.
