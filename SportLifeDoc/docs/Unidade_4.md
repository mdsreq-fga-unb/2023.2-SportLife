# Unidade 04

## Tabela de Testes

| Tipo | Nível | Técnica | Objetivo | Perspectiva | Qualidade | Visão |
| --- | --- | --- | --- | --- | --- | --- |
| Funcional | Unitário | Caixa Branca - Automática | Qualidade Interna | Técnica |  | Avalia se a aplicação faz o que ela deve executar e verificar o funcionamento de cada unidade individual de código |
| Funcional | Integração | Caixa Branca - Automática e Manual | Qualidade Interna | Técnica |  | Avalia se a aplicação faz o que ela deve executar e verificar as interações entre os componentes de software |
| Funcional | Sistema | Manual | Qualidade Externa | Técnica |  | Avalia se a aplicação faz o que ela deve executar e testa o comportamento de um sistema |
| Funcional | Aceitação | Manual | Qualidade Externa | Negócio |  | Avalia se a aplicação faz o que ela deve executar e simula a experiência do usuário |
| Usabilidade | Sistema | Manual | Qualidade Externa | Técnica |  | Verifica se o usuário consegue entender e fazer uso da aplicação e testa o comportamento de um sistema |
| Usabilidade | Aceitação | Manual | Qualidade Externa | Negócio |  | Verifica se o usuário consegue entender e fazer uso da aplicação e simula a experiência do usuário |

## Testes Definidos

### Testes Unitários

**Cadastro:**

Teste de validação de e-mail: Testaria se o e-mail fornecido é válido, ou seja, se segue o formato correto.
Teste de verificação de login: Testaria se o login é bem-sucedido para um usuário válido.
Teste de falha de login: Testaria se o login é negado para um usuário inválido.

**Log In:**

este de validação de nome: Testaria se o nome fornecido é válido, ou seja, se contém apenas letras e espaços.
Teste de validação de e-mail: Testaria se o e-mail fornecido é válido, ou seja, se segue o formato correto.
Teste de validação de senha: Testaria se a senha fornecida é válida.
Teste de inserção de usuário: Testaria se o usuário é inserido com sucesso no banco de dados.
Teste de falha de inserção de usuário: Testaria se o usuário não é inserido no banco de dados devido a um erro de validação.

**Outros:**

Validação de campos obrigatórios: Testaria se os campos obrigatórios estão sendo preenchidos corretamente.
Mensagens de erro: Testaria se as mensagens de erro estão sendo exibidas corretamente.

### Testes de Aceitação

Teste de fluxo de usuário: Testaria o fluxo de usuário completo do aplicativo, desde o login até o cadastro.

Teste de cenário negativo: Testaria os cenários negativos, como por exemplo, o que acontece se o usuário inserir um e-mail inválido ou uma senha incorreta.

### Histórico de Revisão

| Data | Versão | Descrição | Autor |
| --- | --- | --- | --- |
| 22/11/2023 | 1.9 | Tabela de testes | Caio |
| 25/11/2023 | 1.10 | Testes de Aceitação | Caio |
| 12/12/2023 | 1.11 | Adição dos Registros de Planning, Retrospective e Review | Vinícius |
| 13/12/2023 | 1.12 | Revisão do Backlog | Vinícius |

### Lições Aprendidas

De fato essa última unidade foi a que mas nos trouxe aprendizado, corrigindo bugs, implementando a integração contínua, desenvolvendo funcionalidades, utilizando ferramentas novas. Com certeza nos trouxe muito conhecimento, o que é muito bom para todos nós com relação à mercado de trabalho.