# Cidade Dos Artistas

Cidade Dos Artistas é um servidor de Roleplay em GTA V/FiveM com base em arquitetura VRP, recursos customizados, integração com banco de dados e um conjunto de sistemas de gameplay e administração para suporte de um ambiente de RP brasileiro completo.

Este projeto foi montado com uma estrutura modular, separando o núcleo do servidor, os recursos do framework, scripts criativos, utilitários do sistema e módulos de negócio/telefones/veículos. A estrutura atual sugere uma base mais voltada para servidor de produção, com foco em gameplay de roleplay, economia, propriedades, administração e sistemas avançados.

## Visão geral do projeto

O servidor reúne:

- framework principal VRP
- integração com banco de dados MySQL/MariaDB
- sistema de personagens, contas e progresso
- gerenciamento de inventário e dados persistentes por jogador
- recursos de sistema e UI para gameplay
- módulos de cassino, smartphone, propriedades, veículos, polícia, medicina e administração
- uso de recursos externos como oxmysql, ox_lib, pma-voice, PolyZone, sessionmanager, sounds, xsound e monitor

## Stack tecnológica

- FiveM / CFX.re
- GTA V server build
- Lua 5.4
- VRP como base de lógica principal
- MariaDB / MySQL via oxmysql
- JavaScript para algumas interfaces e app de smartphone
- HTML/CSS para interface web
- módulos e integrações de distintas ferramentas do ecossistema FiveM

## Arquitetura do servidor

A base do projeto está organizada em duas grandes áreas principais:

- `server/` → configuração do servidor, recursos e execução
- `artifacts/` → executáveis e binários do servidor FiveM
- `database/` → arquivo SQL com definição de estrutura do banco

### Estrutura principal

```text
Cidade Dos Artistas/
├── artifacts/
│   ├── FXServer.exe
│   ├── components.json
│   ├── citizen/
│   ├── crashes/
│   ├── .gitignore
│   └── ...
├── database/
│   └── database.sql
├── server/
│   ├── resources/
│   │   ├── vrp/
│   │   ├── [system]/
│   │   ├── [scripts]/
│   │   │   ├── [creative]/
│   │   │   ├── [casino]/
│   │   │   ├── [nation]/
│   │   │   ├── [smartphone]/
│   │   │   ├── [exclusive]/
│   │   │   └── [escrow]/
│   ├── server.cfg
│   ├── start.bat
│   └── server.png
├── README.md
├── .git/
└── ...
```

## O que está sendo usado no projeto

### 1. Framework principal: VRP

A pasta `server/resources/vrp` é o coração do servidor. Ela contém:

- `fxmanifest.lua` → definição do resource e dependências do servidor
- `client/` → scripts do lado cliente
- `config/` → arquivos de configuração e idiomas
- `lib/` → bibliotecas e utilitários do framework
- `modules/` → módulos do servidor com lógica de autenticação, dados do jogador, economia, gameplay e persistência

A base do VRP neste projeto inclui operações como:

- autenticação por identificadores do player
- criação e seleção de personagem
- persistência de dados em `playerdata` e `entitydata`
- gerenciamento de inventário e acesso rápido
- controle de permissões e papel do jogador
- sistemas de experiência, dinâmicas e integração com recursos extras

Isso pode ser observado em módulos como:

- `modules/server.lua`
- `modules/prepare.lua`
- `modules/misc.lua`
- `modules/vrp.lua`

### 2. Banco de dados e persistência

O arquivo `database/database.sql` define uma estrutura robusta com tabelas como:

- `accounts`
- `characters`
- `organizations`
- `banneds`
- `chests`
- `vehicles`
- `fines`
- `taxs`
- `transactions`
- `propertys`
- `invoices`
- `investments`
- `dependents`
- `playerdata`
- `entitydata`

A base de dados está muito bem pensada para um servidor de RP, com:

- contas por license
- múltiplos personagens por conta
- veículos por personagem
- economia e finanças
- multas e impostos
- propriedades e cofres
- persistência de dados via `playerdata` e `entitydata`

### 3. Recursos do sistema

A pasta `server/resources/[system]` contém bibliotecas e utilitários essenciais para o núcleo do servidor, incluindo:

- `oxmysql` → integração com MySQL
- `ox_lib` → conjunto de utilidades de Lua para scripts e enchimento de sistema
- `chat` → sistema de chat integrado
- `sessionmanager` → gestão da sessão do jogador
- `pma-voice` → voz em jogo
- `PolyZone` → zonas e interações geográficas
- `sounds` / `xsound` → áudio e efeitos sonoros
- `screenshot-basic` → recursos de screenshot
- `monitor` → monitoramento e administração do servidor
- `NativeUI` → componentes de interface
- `s4-render` → renderização / utilitário de visualização

Esses recursos indicam uma stack sofisticada, mais próxima de um servidor de RP pronto para produção do que um ambiente experimental.

### 4. Recursos criativos e de gameplay

A pasta `server/resources/[scripts]/[creative]` indica uma grande base de conteúdo de gameplay, incluindo áreas como:

- administração
- polícia
- paramédico
- inventário
- propertys / propriedades
- empresas e serviços
- veículos
- jobs e atividades
- evidências, bodycam, rádio, crafting, dinâmica, etc.

O projeto mostra claramente um servidor com diversos sistemas de roleplay, não apenas uma base vazia.

### 5. Smartphone, cassino e recursos especiais

Também existem os diretórios:

- `server/resources/[scripts]/[smartphone]` → mobile, apps, integração de celular, jobs e banco
- `server/resources/[scripts]/[casino]` → conteúdos de cassino, apostas e jogos
- `server/resources/[scripts]/[nation]` → conteúdo específico de nação/país/estrutura geográfica ou de gameplay
- `server/resources/[scripts]/[exclusive]` → conteúdo premium ou exclusivo
- `server/resources/[scripts]/[escrow]` → recursos protegidos ou com licenciamento

Isso demonstra que o projeto foi montado para um servidor mais completo, com múltiplas camadas de gameplay e monetização.

## Configuração principal do servidor

O arquivo principal de configuração é:

- `server/server.cfg`

Ele traz várias definições importantes:

```cfg
endpoint_add_tcp "0.0.0.0:30120"
endpoint_add_udp "0.0.0.0:30120"
sv_maxclients 7
sv_hostname "Cidade Dos Artistas"
set mysql_connection_string "server=127.0.0.1;uid=root;password=;database=cda26;port=3306;charset=utf8mb4"
sv_scriptHookAllowed 0
set onesync_population true
set sv_enforceGameBuild 3095
```

### O que esse arquivo faz

- define porta do servidor
- configura banco de dados
- ativa recursos essenciais
- usa `ensure vrp`, `ensure [system]`, `ensure [creative]`, `ensure [casino]` e demais recursos
- define dados do servidor e tags de branding
- ativa políticas de segurança e compatibilidade

## Requisitos de ambiente

Antes de rodar o servidor, certifique-se de ter:

- Windows 10/11
- FiveM server artifacts válidos
- MySQL/MariaDB funcionando
- Git para versionamento
- editor de código (VS Code recomendado)
- acesso ao diretório do projeto sem bloqueios de permissão

## Configuração do banco

A estrutura do banco está em:

- `database/database.sql`

### Passo a passo

1. Crie um banco MySQL/MariaDB.
2. Importe o arquivo `database.sql`.
3. Ajuste a string de conexão em `server/server.cfg`.
4. Verifique se o nome do banco e as credenciais realmente correspondem ao ambiente local.

### String de conexão típica

```cfg
set mysql_connection_string "server=127.0.0.1;uid=root;password=sua_senha;database=cda26;port=3306;charset=utf8mb4"
```

> Importante: nunca publique suas chaves reais, senhas, token de steam ou licenças em GitHub ou em repositórios públicos.

## Executando o servidor

### Método rápido

O projeto já possui um atalho:

```bat
server\start.bat
```

Esse script usa:

```bat
..\artifacts\FXServer.exe +set onesync on +exec server.cfg
```

### Método manual

Você pode também iniciar diretamente o executável:

```bat
D:\Cidade Dos Artistas\artifacts\FXServer.exe +set onesync on +exec server.cfg
```

## Fluxo de inicialização esperado

Ao iniciar o servidor, a ordem esperada geralmente é:

1. carregamento do servidor FiveM
2. leitura do `server.cfg`
3. bootstrap dos recursos em `ensure`
4. inicialização do VRP
5. sincronização com MySQL via `oxmysql`
6. carregamento dos scripts criativos e do sistema
7. conexão e criação de sessões para os jogadores

## Recursos-chave da base

### VRP core

- criação e gestão de contas
- criação de personagens
- dados persistentes por passport/player
- gerenciamento de inventário
- experiência e progresso
- banco, finanças, multas e impostos
- checagem de banimento e permissões

### Persistência

O framework usa tabelas como:

- `playerdata`
- `entitydata`
- `vehicles`
- `accounts`
- `characters`

Esses dados sustentam quase todo o comportamento do servidor.

### Interface e UX

Há elementos visuais e web no projeto, como:

- `vrp/web/themes.js`
- `server/resources/[scripts]/[smartphone]/smartphone` com interfaces JavaScript
- recursos que se integram a web UI para dashboard, jobs e interações

Isso indica que o servidor não é apenas backend; há forte camada de interface e experiência do usuário.

## Segurança e boas práticas

Como o projeto contém dados sensíveis e materiais de produção, algumas recomendações são fundamentais:

- nunca use credenciais reais em repositórios públicos
- manter `steam_webApiKey` e `sv_licenseKey` fora do controle de versionamento
- revisar `server/server.cfg` antes de compartilhar o projeto
- usar ambiente local ou de testes antes de publicar em produção
- manter `.gitignore` consistente e revisar arquivos grandes/internos
- cuidar do banco e das permissões de acesso

## Principais estruturas de dados relevantes

### `accounts`
Armazena:

- `whitelist`
- `chars`
- `gems`
- `premium`
- `rolepass`
- `discord`
- `license`

### `characters`
Armazena:

- `license`
- `phone`
- `name`
- `name2`
- `sex`
- `bank`
- `blood`
- `prison`
- `fines`
- `taxs`
- `deleted`
- `created`

### `vehicles`
Armazena:

- veículo por passport
- placa
- fuel, body, engine, health
- status de aluguel
- status de apreensão
- imposto

### `propertys`
Armazena:

- nome da propriedade
- proprietário
- serial
- cofre
- geladeira
- garagem
- imposto

## Fluxo de gameplay esperado

Em um ambiente de RP funcionando, a jornada típica seria:

1. player acessa o servidor
2. autentica por identificação do FiveM
3. o sistema cria ou carrega a conta
4. o jogador escolhe um personagem
5. o servidor carrega dados financeiros, personalização e inventário
6. o player interage com jobs, veículos, lojas, propriedades e comunidade
7. recursos externos e modulares continuam persistindo esse estado em banco de dados

## Troubleshooting comum

### 1. O servidor não inicia

Verifique:

- se o `FXServer.exe` está presente em `artifacts/`
- se o `server.cfg` está válido
- se os recursos em `ensure` existem corretamente
- se a conexão com MySQL funciona
- se a licença e API key estão preenchidas corretamente

### 2. O banco não conecta

Confirme:

- host e porta do MySQL
- usuário e senha
- nome do banco
- collation e encoding
- se `oxmysql` está funcionando corretamente

### 3. Recursos não carregam

Verifique:

- se o caminho do resource está correto
- se o `fxmanifest.lua` existe e está com sintaxe correta
- se o resource foi listado em `server.cfg`
- se existem dependências pendentes como `vrp`, `oxmysql`, `ox_lib`

### 4. Problemas com personagens e dados do jogador

Confira:

- tabela `characters`
- tabela `accounts`
- tabela `playerdata`
- caso o projeto tenha sido migrado ou adaptado, certifique-se de que colunas antigas e novas estão compatíveis

## Recomendações para manutenção

Para manter esse projeto saudável em produção, vale seguir:

- revisar e documentar cada módulo novo
- separar configurações locais e produção
- usar Git para cada alteração relevante
- manter as dependências resources atualizadas
- testar mudanças em ambiente isolado antes de aplicar no servidor principal
- remover ou documentar recursos antigos que não são mais usados

## Checklist de deploy

Antes de subir para produção, confirme:

- [ ] `server.cfg` ajustado para o ambiente correto
- [ ] banco MySQL/MariaDB acessível
- [ ] string de conexão correta
- [ ] licença e API key válidas
- [ ] recursos listados em `ensure` existentes
- [ ] todos os recursos de sistema iniciando sem erro
- [ ] playerdata e database compatíveis
- [ ] chaves e dados sensíveis fora do repositório

## Conclusão

Cidade Dos Artistas é um servidor de GTA V/FiveM com estrutura madura e bem organizada para um ambiente de Roleplay. Ele reúne:

- base forte em VRP
- banco de dados completo
- recursos de gameplay e administração
- módulos de sistemas e economia
- UI, smartphone, eventos e recursos premium/exclusivos

Esse README foi elaborado para refletir a realidade do projeto e servir como documentação central para o desenvolvimento, manutenção e onboarding de novos colaboradores.

## Licença e uso

O projeto contém uma base de recursos, scripts, assets e estruturas de servidor que podem ter direitos e licenças específicas. Este README foi criado para documentação interna e de desenvolvimento do projeto, mas o uso em produção e publicação pública deve seguir as regras de licenciamento dos recursos, scripts e dependências inclusos.

## Observação final

Se o objetivo for continuar evoluindo o projeto, o próximo passo ideal é:

1. revisar o `server.cfg` para remover dados sensíveis
2. organizar os recursos por categoria e documentação
3. documentar cada job e cada sistema principal em arquivos específicos
4. criar uma estrutura de changelog e versionamento
5. separar ambiente de desenvolvimento e produção

Se quiser, posso continuar com uma segunda etapa e transformar esse README em uma versão ainda mais profissional para GitHub com:

- badges e visual premium
- tabela de recursos e módulos
- screenshots do servidor
- guia de setup completo para Windows
- documentação de roles, jobs e economia
- versão em inglês e em português

