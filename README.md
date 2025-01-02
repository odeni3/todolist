# To-Do List App

Este é um aplicativo simples de **To-Do List** desenvolvido com **Ruby on Rails**. A aplicação permite que os usuários criem várias listas de tarefas e adicionem itens a essas listas. Além disso, é possível excluir tanto listas quanto tarefas.

## Funcionalidades

- **Criar várias listas de tarefas**: O aplicativo permite que o usuário crie quantas listas desejar para organizar suas tarefas.
- **Adicionar tarefas a cada lista**: Dentro de cada lista, o usuário pode adicionar várias tarefas com um nome e descrição.
- **Remover listas e tarefas**: O usuário tem a opção de excluir tanto listas de tarefas quanto tarefas individuais.
- **Interface simples e intuitiva**: A aplicação possui uma interface minimalista e fácil de usar, com um design simples para facilitar a interação.

## Tecnologias Usadas

- **Ruby on Rails**: Framework web utilizado para construir o back-end da aplicação.
- **HTML/CSS**: Utilizado para criar e estilizar o front-end da aplicação.
- **SQLite**: Banco de dados simples utilizado para armazenar as listas e as tarefas.

## Estrutura do Projeto

A aplicação é organizada da seguinte forma:

- **Modelos**:
  - `List`: Representa uma lista de tarefas. Cada lista pode ter várias tarefas associadas.
  - `Task`: Representa uma tarefa dentro de uma lista. Cada tarefa tem um nome, uma descrição e um estado (completa ou não).
  
- **Controllers**:
  - `ListsController`: Gerencia as ações relacionadas às listas, como criar, exibir, e destruir listas.
  - `TasksController`: Gerencia as ações relacionadas às tarefas, como criar e excluir.
  
- **Views**:
  - **Index**: A página inicial, onde as listas são apresentadas como "cards" com seus respectivos itens. As ações de criação e exclusão estão disponíveis aqui.
  - **Show**: Exibe os itens dentro de uma lista específica, permitindo o gerenciamento das tarefas dessa lista.
