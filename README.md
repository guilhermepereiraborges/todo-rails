# 📝 Todo Rails

Uma aplicação moderna de gerenciamento de tarefas construída com Ruby on Rails 8.1, PostgreSQL e Tailwind CSS.

## ✨ Funcionalidades

- 🔐 Autenticação de usuários com Devise
- 📋 Criação e gerenciamento de listas de tarefas
- ✅ Adicionar, editar e completar tarefas
- 🎨 Interface moderna com Tailwind CSS
- 🎯 Priorização de tarefas (baixa, média, alta)
- 🎨 Personalização de cores para listas

## 🛠️ Tecnologias

- **Ruby**: 3.4.8
- **Rails**: 8.1.2
- **Banco de dados**: PostgreSQL 14+
- **CSS Framework**: Tailwind CSS
- **Autenticação**: Devise

## 📋 Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- Ruby 3.4.8 (recomendado usar [rbenv](https://github.com/rbenv/rbenv) ou [rvm](https://rvm.io/))
- Docker
- Git

## 🚀 Instalação e Configuração

### 1. Clone o repositório

```bash
git clone https://github.com/guilhermepereiraborges/todo-rails.git
cd todo-rails
```

### 2. Instale as dependências do Ruby

```bash
bundle install
```

### 3. Configure as variáveis de ambiente

Crie um arquivo `.env` na raiz do projeto:

```bash
# Database
DB_HOST=localhost
DB_PORT=5432
DB_USERNAME=postgres
DB_PASSWORD=sua_senha_aqui

```

### 4. Configure o banco de dados

#### Docker Compose

Execute os comandos:

```bash
docker-compose up -d
bin/rails db:create
bin/rails db:migrate
```

### 5. Inicie o servidor de desenvolvimento

```bash
bin/dev
```

A aplicação estará disponível em: **http://localhost:3000**

## 🗄️ Estrutura do Banco de Dados

### Tabelas principais:

**users**
- `id` 
- `name` 
- `email` 

**todo_lists**
- `id` 
- `title` 
- `description` 
- `color` 
- `user_id` 

**todo_items**
- `id` 
- `content` 
- `completed` 
- `priority` 
- `todo_list_id` 

## 📱 Funcionalidades Principais

### Autenticação
- Registro de novos usuários
- Login/Logout
- Recuperação de senha

### Listas de Tarefas
- Criar nova lista
- Editar lista existente
- Excluir lista (e todas as tarefas associadas)
- Personalizar cor da lista

### Tarefas
- Adicionar nova tarefa
- Marcar como completa/incompleta
- Editar tarefa
- Excluir tarefa
- Definir prioridade


## 📧 Contato

Guilherme Pereira Borges - [@guilhermepereiraborges](https://github.com/guilhermepereiraborges)

Link do projeto: [https://github.com/guilhermepereiraborges/todo-rails](https://github.com/guilhermepereiraborges/todo-rails)

---

Feito com ❤️ usando Ruby on Rails
