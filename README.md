# To-Do List App

Este é um aplicativo simples de **To-Do List** desenvolvido com **Ruby on Rails**. A aplicação permite que os usuários criem várias listas de tarefas, adicionem itens a essas listas, e utilizem funcionalidades como prazos de validade e descrições detalhadas.

## Funcionalidades

- **Criar várias listas de tarefas**: Organize suas tarefas criando quantas listas desejar.
- **Adicionar tarefas a cada lista**: Insira tarefas em suas listas com:
  - Nome da tarefa
  - Descrição opcional
  - Data de validade
- **Excluir listas e tarefas**: Remova listas completas ou tarefas individuais conforme necessário.
- **Interface simples e intuitiva**: Um design minimalista e responsivo para facilitar a navegação.

## Tecnologias Usadas

- **Ruby on Rails**: Framework web utilizado para o back-end da aplicação.
- **HTML/CSS**: Criação e estilização do front-end.
- **SQLite**: Banco de dados para armazenar listas e tarefas.

## Estrutura do Projeto

A aplicação está estruturada da seguinte forma:

### **Modelos**
- `List`: Representa uma lista de tarefas. Cada lista pode conter várias tarefas.
- `Task`: Representa uma tarefa em uma lista. As tarefas têm os seguintes atributos:
  - **name**: Nome da tarefa.
  - **description**: Descrição da tarefa.
  - **due_date**: Data de validade da tarefa.

### **Controllers**
- `ListsController`: Gerencia as ações relacionadas às listas, como criar, exibir, filtrar e excluir.
- `TasksController`: Gerencia as ações relacionadas às tarefas, como criar, excluir e associar a listas específicas.

### **Views**
- **Index**: Página inicial que exibe todas as listas como "cards", com as tarefas associadas. Possui:
  - Botões para adicionar novas listas ou excluir existentes.
- **Show**: Exibe as tarefas de uma lista específica. Permite:
  - Adicionar ou remover tarefas de uma lista.
