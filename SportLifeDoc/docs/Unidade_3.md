# Unidade 3

## Critério de Aceitação das Histórias de Usuário

## MVP1

### Primeira Sprint

- US 03: Eu, como usuário, quero cadastrar uma nova conta de usuário para ter acesso ao sistema;
    1. Campos obrigatórios (Nome Responsável, Nome do Paciente, Email, CPF do Responsável, Senha e Confirmação de Senha) devem estar preenchidos para o cadastramento dos dados do cliente;
    2. O sistema deverá indicar quando o email ou telefone já estiver sendo utilizado;

- US 04: Eu, como funcionário, quero cadastrar uma nova conta de funcionário para ter acesso ao sistema;
    1. Campos obrigatórios (Nome do Funcionário, Email, CPF, Senha) devem estar preenchidos para o cadastramento dos dados do funcionário;
    2. O sistema deverá indicar quando o email ou telefone já estiver sendo utilizado;
    3. Um novo cadastro deverá ser armazenado em um banco de dados para que fique salvo,impedindo que haja um novo cadastro no mesmo email/tefelone;
- US 01: Eu, como funcionário, quero me autenticar usando um login para ter acesso a todas as funcionalidades disponíveis aos funcionários;
    1. Campos obrigatórios (Email/Telefone e Senha) devem estar preenchidos para a autenticação do funcionário;
    2. O email/telefone deve ser o mesmo usado no cadastro;
    3. A senha deve ser a mesma fornecida pelo aplicativo ao realizar o cadastro;
    4. Avisar caso haja algo errado em qualquer um dos campos obrigatórios;

- US 02: Eu, como usuário, quero me autenticar usando um login para ter acesso a todas as funcionalidades disponíveis aos usuários;
    1. Campos obrigatórios (Email/Telefone e Senha) devem estar preenchidos para a autenticação do usuário;
    2. O email/telefone e a senha devem ser os mesmos usados no cadastro;
    3. Avisar caso haja algo errado em qualquer um dos campos obrigatórios;

- US 12: Eu, como funcionário, quero distribuir conteúdos educativos para múltiplos pacientes, afim de evitar mandar os conteúdos individualmente;
    - Deve conseguir selecionar um PDF diretamente da biblioteca de arquivos do celular do usuário, caso mobile;
    - Deve conseguir selecionar um arquivo PDF diretamente de uma pasta do computador do usuário, caso web;
    - Deve ser possível adicionar um título para o PDF que será enviado;

- US 9: Eu, como funcionário, quero dar feedback de forma consistente sobre os hábitos alimentares de pacientes individuais;
    - Ter capacidade de adicionar comentários aos registros alimentares feitos pelos usuários;
    - Ter capacidade de mostrar os comentários em cada registro;
- US 11: Eu, como funcionário, quero me informar sobre os hábitos alimentares diários de pacientes afim de personalizar e ajustar os tratamentos;
    - Deve aparecer para o funcionário todos os registros, com arquivo de foto e descrição, feitos pelos usuários;
    - Deve aparecer os registros de cima para baixo, aonde conforme o funcionário role a tela pra cima, apareça mais registros;
    - Deve aparecer os registros do mais recente para o menos recente;

## Segunda Sprint

- Eu, como funcionário, quero ver e marcar consultas ou reuniões futuras para me preparar de acordo;
    1. Deve ser possível adicionar uma nova consulta/reunião;
    2. Deve ser capaz de monitorar as futuras consultas/reuniões por meio de um calendário;
- Eu, como funcionário, quero me comunicar de forma privada com pacientes afim de manter a confidencialidade médica;
    1. Presença de um chat direto entre usuário e funcionário;
    2. Mensagens devem ser entregues tanto pelo usuário quanto pelo funcionário;
    3. Possibilidade de mudar de chat, caso funcionário;
    4. Deve ser capaz de armazenar as mensagens nas conversas;
- Eu, como usuário, quero poder me informar sobre datas de consultas marcadas para evitar cancelamentos e inconveniências;
    1. Necessário só um toque para que sejam mostradas as datas e informações de próximas consultas;
- Eu, como usuário geral, quero ser capaz de escolher uma nova senha para garantir que meu acesso ao sistema não será perdido;
    1. Os campos obrigatórios devem estar preenchidos;
    2. Os campos obrigatórios devem estar iguais;
    3. Deve alterar a senha registrada no banco de dados para uma nova senha;
- US 08.1: Eu, como funcionário, quero poder desmarcar eventos para maximizar eficiência da clínica;
    - Deve ser capaz de desmarcar um evento que foi marcado anteriormente;
- US 08.2: Eu, como funcionário, quero poder alterar dados de eventos para maximizar eficiência da clínica;’
    - Deve ser capaz de alterar os dados (Título, Tipo de compromisso, Horário e Descrição) de um evento que foi marcado anteriormente;
- US 10: Eu, como usuário, quero registrar meus hábitos alimentares para ajudar em decisões sobre meu tratamento;
    - Deve ser capaz de criar novos registros, contendo um arquivo de foto e uma descrição;
    - Deve ser capaz de adicionar um arquivo de imagem da biblioteca do celular  do usuário, caso mobile;
    - Deve ser capaz de adicionar um arquivo de imagem de uma pasta do computador do usuário, caso web;
- US 14: Eu, como funcionário, quero ser capaz de notificar pacientes com informações ao longo do dia afim de reforçar e facilitar o tratamento;
    - Deve ser capaz de adicionar título à notificação;
    - Deve ser capaz de adicionar descrição à notificação;
    - Deve conseguir enviar uma notificação para o celular de todos os usuários;
- US 15: Eu, como funcionário, quero ser capaz de notificar pacientes com dicas ao longo do dia afim de reforçar e facilitar o tratamento;
    - Deve ser capaz de adicionar título à notificação;
    - Deve ser capaz de adicionar descrição à notificação;
    - Deve conseguir enviar uma notificação para o celular de todos os usuários;

## Tarefas das Histórias de Usuário

Aqui está a quebra de histórias em tarefas para as histórias de usuário fornecidas:

**US 3: Eu, como usuário, quero cadastrar uma nova conta de usuário para ter acesso ao sistema**

- Tarefa 1: Criar um formulário de cadastro de usuário
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Validar os dados do formulário de cadastro
- Tarefa 3: Alerta de erros de preenchimento de um campo obrigatório
- Tarefa 4: Salvar os dados do formulário de cadastro no banco de dados

**US 4: Eu, como funcionário, quero cadastrar uma nova conta de funcionário para ter acesso ao sistema**

- Tarefa 1: Criar um formulário de cadastro de funcionário
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Validar os dados do formulário de cadastro
- Tarefa 3: Alerta de erros de preenchimento de um campo obrigatório
- Tarefa 4: Salvar os dados do formulário de cadastro no banco de dados

**US 1: Eu, como funcionário, quero me autenticar usando um login para ter acesso a todas as funcionalidades disponíveis aos funcionários**

- Tarefa 1: Implementar um login para funcionários
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Implementar um sistema de autenticação
- Tarefa 3: Integrar o sistema de autenticação com o banco de dados de funcionários

**US 2: Eu, como usuário, quero me autenticar usando um login para ter acesso a todas as funcionalidades disponíveis aos usuários**

- Tarefa 1: Implementar um login para usuários
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Implementar um sistema de autenticação
- Tarefa 3: Integrar o sistema de autenticação com o banco de dados de usuários

**US 08.1: Eu, como funcionário, quero poder desmarcar eventos para maximizar eficiência da clínica;**

- Tarefa 1: Exibir uma lista de eventos marcados;
- Tarefa 2: Permitir que o funcionário selecione um evento para desmarcar;
- Tarefa 3: Excluir o evento da lista de eventos marcados;

**US 08.2: Eu, como funcionário, quero poder alterar dados de eventos para maximizar eficiência da clínica;’**

- Tarefa 1: Exibir uma lista de eventos marcados;
- Tarefa 2: Permitir que o funcionário selecione um evento para alterar;
- Tarefa 3: Permitir que o funcionário altere os dados do evento (Título, Tipo de compromisso, Horário e Descrição);
- Tarefa 4: Salvar as alterações do evento;

**US 12: Eu, como funcionário, quero distribuir conteúdos educativos para múltiplos pacientes, afim de evitar mandar os conteúdos individualmente;**

- Tarefa 1: Permitir que o funcionário selecione um arquivo PDF;
- Tarefa 2: Permitir que o funcionário adicione um título para os arquivos PDF selecionados;
- Tarefa 3: Enviar os arquivos PDF selecionados para os pacientes;
- Tarefa 4: Desenvolver sistema de rolagem de tela;

**US 9: Eu, como funcionário, quero dar feedback de forma consistente sobre os hábitos alimentares de pacientes individuais;**

- Tarefa 1: Exibir uma lista de registros alimentares feitos pelos usuários;
- Tarefa 2: Permitir que o funcionário adicione um comentário a um registro alimentar;
- Tarefa 3: Salvar o comentário no registro alimentar;

**US 14.1: Eu, como funcionário, quero ser capaz de notificar pacientes com informações ao longo do dia afim de reforçar e facilitar o tratamento;**

- Tarefa 1: Permitir que o funcionário adicione um título para a notificação;
- Tarefa 2: Permitir que o funcionário adicione uma descrição para a notificação;
- Tarefa 3: Enviar a notificação para todos os pacientes;

**US 14.2: Eu, como funcionário, quero ser capaz de notificar pacientes com dicas ao longo do dia afim de reforçar e facilitar o tratamento;**

- Tarefa 1: Permitir que o funcionário adicione um título para a notificação;
- Tarefa 2: Permitir que o funcionário adicione uma descrição para a notificação;
- Tarefa 3: Enviar a notificação para todos os pacientes;

**US 11: Eu, como funcionário, quero me informar sobre os hábitos alimentares diários de pacientes afim de personalizar e ajustar os tratamentos;**

- Tarefa 1: Exibir uma lista de registros alimentares feitos pelos usuários;
- Tarefa 2: Ordenar a lista de registros alimentares do mais recente para o menos recente;
- Tarefa 3: Permitir que o funcionário role a lista de registros alimentares para cima ou para baixo;

**US 10: Eu, como usuário, quero registrar meus hábitos alimentares para ajudar em decisões sobre meu tratamento;**

- Tarefa 1: Permitir que o usuário adicione um arquivo de imagem da biblioteca do celular ou de uma pasta do computador;
- Tarefa 2: Permitir que o usuário adicione uma descrição ao registro alimentar;
- Tarefa 3: Salvar o registro alimentar no sistema;

US 3:

- Tarefa 1: Criar um formulário de cadastro de usuário
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Validar os dados do formulário de cadastro
- Tarefa 3: Alerta de erros de preenchimento de um campo obrigatório
- Tarefa 4: Salvar os dados do formulário de cadastro no banco de dados

US 4:

- Tarefa 1: Criar um formulário de cadastro de funcionário
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Validar os dados do formulário de cadastro
- Tarefa 3: Alerta de erros de preenchimento de um campo obrigatório
- Tarefa 4: Salvar os dados do formulário de cadastro no banco de dados

US 1:

- Tarefa 1: Implementar um login para funcionários
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Implementar um sistema de autenticação
- Tarefa 3: Integrar o sistema de autenticação com o banco de dados de funcionários

US 2:

- Tarefa 1: Implementar um login para usuários
    - Desenvolver interface UI;
    - Desenvolver funcionalidades backend;
- Tarefa 2: Implementar um sistema de autenticação
- Tarefa 3: Integrar o sistema de autenticação com o banco de dados de usuários

 