
🩺 # HealthTech Blog

Aplicações de Tecnologia e Inteligência Artificial na Saúde

O HealthTech Blog é uma aplicação web desenvolvida em Ruby on Rails, com PostgreSQL e Bootstrap 5, criada para explorar o impacto da tecnologia e da inteligência artificial no campo da saúde.
O projeto apresenta um sistema completo de gerenciamento de artigos (CRUD), com layout responsivo e foco em usabilidade, servindo como uma vitrine de conteúdos e pesquisas sobre inovação tecnológica na área médica.

💡 Objetivo

O projeto foi desenvolvido para demonstrar o uso de tecnologias web modernas em aplicações voltadas à saúde digital, IA médica e análise de dados.
Além disso, busca promover a disseminação de conhecimento sobre como a computação pode auxiliar diagnósticos, sistemas inteligentes e o bem-estar humano.

🧩 Principais Funcionalidades

📰 CRUD completo de artigos — criar, editar, visualizar e excluir publicações

🎨 Interface responsiva com Bootstrap 5

🧠 Página institucional “Sobre” com informações sobre o projeto e a autora

🩻 Artigo em destaque: “Como a IA pode revolucionar o campo da saúde”

💾 Banco de dados PostgreSQL para persistência dos dados

⚙️ Estrutura MVC (Model-View-Controller) do Ruby on Rails

⚙️ Tecnologias Utilizadas

Ruby on Rails 7

PostgreSQL

Bootstrap 5

HTML5 / ERB

CSS3

Renderização dinâmica com Rails Views

🧠 Estrutura do Projeto
hhealthtech/
 ├── app/
 │   ├── models/ → Regras e estruturas de dados (Article)
 │   ├── controllers/ → Lógica das rotas e fluxo de dados
 │   └── views/ → Páginas do usuário (index, show, form, sobre)
 ├── config/ → Configurações de rotas e banco de dados
 ├── db/ → Migrações e schema do PostgreSQL
 └── public/ → Arquivos estáticos


🚀 Como Executar Localmente
# Clone o repositório
git clone https://github.com/seu-usuario/healthtech.git
cd healthtech

Instale as dependências
bundle install

Configure o banco
rails db:create db:migrate

Inicie o servidor
rails s

Acesse 👉 http://localhost:3000
