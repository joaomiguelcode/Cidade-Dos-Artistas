# Cidade Dos Artistas

Servidor de Roleplay em GTA V baseado em FiveM, com arquitetura VRP e recursos do ecossistema de RP brasileiro. Este projeto reúne estruturas de gameplay, sistema de inventário, interação, veículos, sistemas de negócios, polícia, medicina, UI e recursos complementares para um servidor de roleplay completo.

## Visão geral

Cidade Dos Artistas é um servidor de GTA V / FiveM preparado para ambiente de roleplay, com foco em:

- Jogabilidade de RP com framework VRP
- Banco de dados MySQL/MariaDB
- Recursos de sistema, criativos e exclusivos
- Estrutura pronta para expansão
- Base para servidor multiplayer com vários scripts e módulos

## Tecnologias e stack

- FiveM / CFX.re
- Framework: VRP
- Banco: MySQL / MariaDB
- Linguagens principais: Lua, JavaScript, HTML/CSS
- Estrutura de recursos: `server/resources`
- Servidor principal: `server/server.cfg`

## Requisitos

Antes de iniciar o servidor, certifique-se de ter instalado:

- Windows 10/11
- FiveM server artifacts
- MySQL/MariaDB
- Git
- Editor de texto ou IDE (VS Code recomendado)
- Acesso ao diretório da pasta do servidor

## Estrutura do projeto

```text
Cidade Dos Artistas/
├── artifacts/
│   ├── FXServer.exe
│   ├── citizen/
│   ├── scripts/
│   └── system_resources/
├── database/
│   └── database.sql
├── server/
│   ├── resources/
│   │   ├── [scripts]/
│   │   ├── [system]/
│   │   └── vrp/
│   ├── server.cfg
│   ├── start.bat
│   └── server.png
├── .git/
├── .gitignore
├── README.md
└── ...
```

## Descrição das pastas

### `artifacts/`
Contém os binários e recursos do FiveM, incluindo a base do servidor e os arquivos do cliente/servidor do projeto.

### `database/`
Armazena o script SQL para criar o banco de dados e as tabelas principais do servidor.

### `server/`
Pasta principal do servidor:

- `server.cfg` — configurações gerais do servidor
- `start.bat` — inicialização rápida do servidor
- `resources/` — diretório dos scripts e módulos do projeto

## Configuração inicial

### 1. Criar o banco de dados

Importe o arquivo SQL localizado em:

```text
database/database.sql
```

No MySQL/MariaDB, crie o banco e execute o conteúdo do arquivo para gerar as tabelas do servidor.

### 2. Ajustar o arquivo de configuração

Edite o arquivo:

```text
server/server.cfg
```

Configure os itens abaixo com suas informações reais:

- `set mysql_connection_string`
- `sv_hostname`
- `sets Discord`
- `sv_licenseKey`
- `set steam_webApiKey`
- `add_principal identifier.steam:... group.Admin`

> Importante: substitua todas as chaves e credenciais reais antes de compilar ou publicar o servidor. Não reutilize valores de produção em ambiente público sem revisão.

### 3. Ajustar o caminho do executável

A inicialização do servidor pode ser feita pelo arquivo:

```text
server/start.bat
```

Ou manualmente com o executável do FiveM, conforme a estrutura do seu ambiente.

## Iniciando o servidor

No Windows, você pode executar:

```bat
cd server
start.bat
```

Ou iniciar o servidor diretamente pelo executável do FiveM com a configuração do servidor:

```bat
..\artifacts\FXServer.exe +set onesync on +exec server.cfg
```

## Estrutura dos recursos

O diretório `server/resources` contém vários grupos, incluindo:

- `[system]` — recursos base do FiveM e utilidades do servidor
- `[creative]` — scripts de gameplay e interações do RP
- `[casino]` — conteúdo de cassino e jogos
- `[smartphone]` — sistema de celular/integrações
- `[nation]` — recursos nacionais e complementares
- `[exclusive]` — recursos premium ou exclusivos
- `[escrow]` — recursos protegidos ou específicos
- `vrp` — base do framework principal do servidor

## Funcionalidades esperadas

Este projeto inclui uma base robusta de servidor para:

- criação de personagens
- integração com banco de dados
- gestão de contas e personagens
- sistemas de emprego e atividades
- economia do servidor
- polícia, medicina e outros departamentos
- inventário, cofres, carros e propriedades
- UI e recursos web para interações

## Variáveis e configurações importantes

No arquivo `server/server.cfg`, alguns valores comuns de configuração incluem:

```cfg
endpoint_add_tcp "0.0.0.0:30120"
endpoint_add_udp "0.0.0.0:30120"
sv_maxclients 7
set onesync_population true
set sv_enforceGameBuild 3095
sv_scriptHookAllowed 0
```

Esses valores podem ser ajustados conforme a necessidade do seu ambiente.

## Dependências do banco

A estrutura do banco de dados em `database/database.sql` contém tabelas como:

- `accounts`
- `characters`
- `organizations`
- `banneds`
- `chests`
- `calladminranking`
- diversos módulos de gameplay e administração

É recomendado verificar se a estrutura atende ao seu ambiente antes de iniciar em produção.

## Recomendações de segurança

- Nunca publique credenciais reais em repositórios públicos
- Mantenha as chaves de Steam e CFX em variáveis locais ou arquivos ignorados
- Use `.gitignore` para não enviar arquivos sensíveis
- Revise o `server.cfg` antes de compartilhar o projeto
- Use um ambiente de desenvolvimento antes de publicar o servidor

## Solução de problemas comuns

### O servidor não inicia

Verifique:

- se o `FXServer.exe` existe na pasta correta
- se o `server.cfg` está correto
- se a conexão com MySQL está funcionando
- se a licença e a chave de API foram configuradas

### Banco de dados não conecta

- valide o endereço do host e porta
- confirme o usuário e senha do MariaDB/MySQL
- confira o nome do banco `cda26` ou ajuste para o nome correto

### Recursos não carregam

- confira se o diretório `server/resources` está completo
- verifique se os arquivos `fxmanifest.lua` estão válidos
- confira se os recursos estão listados em `server.cfg` com `ensure`

## Contribuição

Contribuições são bem-vindas. Para colaborar:

1. Faça um fork do repositório
2. Crie uma branch para sua alteração
3. Faça commits com mensagens claras
4. Abra um pull request explicando a mudança

## Licença

Este projeto foi desenvolvido para fins de uso local e de estudo, conforme a estrutura e o ambiente em que está sendo executado. Caso você vá publicar ou reutilizar em produção, revise os direitos de uso dos recursos, scripts e assets incluídos.

## Observação final

Este README foi preparado como base de documentação para o projeto e pode ser atualizado conforme novas features forem adicionadas ao servidor.

---

Se quiser, posso continuar e criar também:

- um `README.md` mais profissional para GitHub com badges e screenshots
- uma versão em inglês
- uma documentação de instalação passo a passo para Windows
- uma documentação de configuração do banco e do FiveM mais detalhada

