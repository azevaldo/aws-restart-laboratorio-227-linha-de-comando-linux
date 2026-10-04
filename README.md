# AWS re/Start — Linux Command Line

Laboratório **227 — Linux Command Line**, realizado durante o programa **AWS re/Start**.

Neste laboratório foram praticados comandos básicos da linha de comando Linux para obter informações sobre o sistema, usuário, sessões, data e hora, além de técnicas para consultar e reutilizar comandos anteriores através do histórico do Bash.

## Objetivos

* Executar comandos para obter informações sobre o sistema atual e a sessão.
* Utilizar comandos básicos do Linux.
* Consultar informações sobre usuários e grupos.
* Trabalhar com data, hora e calendário.
* Visualizar o histórico de comandos do Bash.
* Pesquisar e reutilizar comandos executados anteriormente.

## Ambiente utilizado

* **Plataforma:** Vocareum
* **Serviço:** Amazon EC2
* **Sistema operacional:** Amazon Linux
* **Acesso:** SSH
* **Cliente SSH:** PuTTY
* **Sistema local:** Windows
* **Chave utilizada:** `labsuser.ppk`
* **Usuário remoto:** `ec2-user`
* **Porta SSH:** `22`

> A chave privada `.ppk` não faz parte deste repositório e nunca deve ser enviada para o GitHub.

---

## 1. Iniciar o laboratório

O laboratório foi iniciado através do ambiente Vocareum.

Após o status ficar como **Ready**, foi acessado o AWS Management Console disponibilizado pelo ambiente.

No painel **Details**, foram obtidas as informações necessárias para a conexão:

* **PublicIP** da instância;
* opção **Download PPK** para obter a chave `labsuser.ppk`.

---

## 2. Conectar à instância utilizando PuTTY

Como o ambiente utilizado foi Windows, a conexão SSH foi realizada através do **PuTTY**.

### Configuração da sessão

No PuTTY foram configurados:

```text
Host Name: <PublicIP>
Port: 22
Connection type: SSH
```

Depois, em:

```text
Connection
└── SSH
    └── Auth
        └── Credentials
```

foi selecionada a chave privada:

```text
labsuser.ppk
```

Após iniciar a conexão, foi aceita a mensagem de segurança apresentada pelo PuTTY na primeira conexão.

O usuário utilizado para acessar a instância foi:

```text
ec2-user
```

---

# 3. Executar comandos básicos do Linux

Após estabelecer a conexão SSH, foram executados comandos para obter informações sobre o sistema e sobre a sessão atual.

## 3.1 Identificar o usuário atual

O comando `whoami` mostra o nome do usuário atualmente conectado.

```bash
whoami
```

No ambiente do laboratório, o resultado esperado é:

```text
ec2-user
```

Também foi praticado o recurso de autocomplete do Bash digitando:

```text
whoa
```

e pressionando `Tab`, fazendo com que o terminal complete o comando para:

```bash
whoami
```

---

## 3.2 Verificar o nome do computador

O comando abaixo apresenta uma versão simplificada do hostname da máquina:

```bash
hostname -s
```

Esse comando é útil para identificar rapidamente o nome do computador ou da instância em que o usuário está trabalhando.

---

## 3.3 Verificar há quanto tempo o sistema está funcionando

O comando:

```bash
uptime -p
```

mostra há quanto tempo o sistema está em execução em um formato mais fácil de interpretar.

Exemplo:

```text
up 25 minutes
```

O resultado depende do tempo de funcionamento da instância EC2.

---

## 3.4 Ver usuários conectados

Foi utilizado:

```bash
who -H -a
```

Esse comando apresenta informações sobre usuários e sessões no sistema.

A opção `-H` adiciona os cabeçalhos das colunas, enquanto `-a` solicita informações adicionais.

---

# 4. Trabalhar com data e hora

O laboratório também apresentou formas de consultar a data e a hora considerando diferentes fusos horários.

## 4.1 Horário de Nova York

```bash
TZ=America/New_York date
```

O comando utiliza a variável `TZ` temporariamente para exibir a data e hora de Nova York.

## 4.2 Horário de Los Angeles

```bash
TZ=America/Los_Angeles date
```

Da mesma forma, o comando mostra a data e hora considerando o fuso de Los Angeles.

---

# 5. Trabalhar com calendário

## 5.1 Exibir calendário no formato Julian

Foi utilizado:

```bash
cal -j
```

Esse formato apresenta os dias do ano de forma consecutiva, utilizando a numeração correspondente ao calendário juliano.

---

## 5.2 Alterar a visualização do calendário

Também foram utilizados:

```bash
cal -s
```

e:

```bash
cal -m
```

Essas opções alteram a organização dos dias da semana apresentada pelo calendário.

Para consultar outras opções disponíveis:

```bash
man cal
```

---

# 6. Consultar informações do usuário

O comando:

```bash
id ec2-user
```

foi utilizado para consultar informações de identificação do usuário `ec2-user`.

O resultado apresenta informações como:

* User ID (UID);
* Group ID (GID);
* grupos aos quais o usuário pertence.

---

# 7. Consultar o histórico do Bash

O Bash mantém um histórico dos comandos executados durante a sessão.

Para visualizar esse histórico:

```bash
history
```

Esse comando permite verificar os comandos que foram executados anteriormente no terminal.

---

# 8. Pesquisar comandos anteriores

O laboratório apresentou o recurso de pesquisa reversa do histórico.

Para iniciar uma pesquisa:

```text
Ctrl + R
```

Depois, foi pesquisado um comando relacionado a `TZ`.

A pesquisa reversa permite localizar rapidamente comandos executados anteriormente sem precisar digitá-los novamente.

Após localizar o comando, ele pode ser editado utilizando as teclas de navegação do teclado antes de ser executado.

---

# 9. Reexecutar o último comando

Também foi praticado o operador:

```bash
!!
```

Esse recurso permite executar novamente o último comando utilizado.

Por exemplo:

```bash
date
```

Depois:

```bash
!!
```

O segundo comando executa novamente:

```bash
date
```

Isso pode ser útil quando precisamos repetir rapidamente uma operação.

---

# 10. Principais comandos praticados

Durante o laboratório foram utilizados:

```bash
whoami
hostname -s
uptime -p
who -H -a
TZ=America/New_York date
TZ=America/Los_Angeles date
cal -j
cal -s
cal -m
id ec2-user
history
date
!!
```

Também foram utilizados recursos do Bash como:

```text
Tab
Ctrl + R
↑ / ↓
```

---

# 11. O que foi aprendido

Neste laboratório foram praticados conceitos importantes da linha de comando Linux:

* identificação do usuário atual;
* identificação do hostname;
* verificação do tempo de funcionamento do sistema;
* consulta de usuários e sessões;
* consulta de UID, GID e grupos;
* manipulação de data e hora;
* utilização de diferentes fusos horários;
* visualização de calendários;
* utilização do histórico do Bash;
* pesquisa reversa de comandos;
* reutilização do último comando;
* autocomplete utilizando `Tab`.

Esses recursos são importantes para administração de sistemas Linux e para tarefas de diagnóstico e troubleshooting.

---

# 12. Conclusão

O laboratório **Linux Command Line** permitiu praticar comandos fundamentais do Linux diretamente em uma instância Amazon Linux executada no Amazon EC2.

Além dos comandos básicos de consulta do sistema, também foram praticados recursos do Bash que tornam o trabalho no terminal mais rápido e eficiente, principalmente o autocomplete, o histórico de comandos e a pesquisa reversa.

O acesso à instância foi realizado utilizando **SSH através do PuTTY**, com a chave privada `labsuser.ppk`.

---

## Arquivos deste repositório

```text
README.md      → documentação do laboratório
comandos.sh    → comandos praticados, com comentários explicativos
.gitignore     → arquivos que não devem ser enviados ao GitHub
```
