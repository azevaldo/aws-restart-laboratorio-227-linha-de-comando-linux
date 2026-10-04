```bash
#!/bin/bash

# ============================================================
# AWS re/Start - Laboratório 227: Linux Command Line
# Comandos praticados durante o laboratório
# ============================================================

# ------------------------------------------------------------
# 1. IDENTIFICAR O USUÁRIO ATUAL
# ------------------------------------------------------------
# O comando "whoami" mostra o nome do usuário atualmente
# conectado ao sistema.

whoami


# ------------------------------------------------------------
# 2. IDENTIFICAR O HOSTNAME DA MÁQUINA
# ------------------------------------------------------------
# O comando "hostname -s" mostra uma versão simplificada
# do nome do computador/instância.

hostname -s


# ------------------------------------------------------------
# 3. VERIFICAR O TEMPO DE FUNCIONAMENTO DO SISTEMA
# ------------------------------------------------------------
# O comando "uptime -p" mostra há quanto tempo o sistema
# está funcionando em um formato fácil de interpretar.

uptime -p


# ------------------------------------------------------------
# 4. VERIFICAR USUÁRIOS E SESSÕES
# ------------------------------------------------------------
# O comando "who -H -a" apresenta informações sobre usuários
# conectados e outras informações relacionadas às sessões.
#
# -H -> mostra os cabeçalhos das colunas
# -a -> apresenta informações adicionais

who -H -a


# ------------------------------------------------------------
# 5. CONSULTAR DATA E HORA DE NOVA YORK
# ------------------------------------------------------------
# A variável TZ permite especificar temporariamente o fuso
# horário utilizado pelo comando "date".
#
# Neste caso, o horário apresentado será o de Nova York.

TZ=America/New_York date


# ------------------------------------------------------------
# 6. CONSULTAR DATA E HORA DE LOS ANGELES
# ------------------------------------------------------------
# Neste exemplo, o comando "date" utiliza o fuso horário
# de Los Angeles.

TZ=America/Los_Angeles date


# ------------------------------------------------------------
# 7. EXIBIR O CALENDÁRIO NO FORMATO JULIANO
# ------------------------------------------------------------
# A opção "-j" faz com que o calendário apresente os dias
# do ano de forma consecutiva.

cal -j


# ------------------------------------------------------------
# 8. EXIBIR O CALENDÁRIO COMEÇANDO NO DOMINGO
# ------------------------------------------------------------
# A opção "-s" apresenta o calendário iniciando a semana
# no domingo.

cal -s


# ------------------------------------------------------------
# 9. EXIBIR O CALENDÁRIO COMEÇANDO NA SEGUNDA-FEIRA
# ------------------------------------------------------------
# A opção "-m" apresenta o calendário iniciando a semana
# na segunda-feira.

cal -m


# ------------------------------------------------------------
# 10. CONSULTAR INFORMAÇÕES DO USUÁRIO
# ------------------------------------------------------------
# O comando "id" apresenta informações de identificação
# do usuário, como:
#
# UID -> identificador do usuário
# GID -> identificador do grupo
# groups -> grupos aos quais o usuário pertence

id ec2-user


# ------------------------------------------------------------
# 11. VISUALIZAR O HISTÓRICO DO BASH
# ------------------------------------------------------------
# O comando "history" mostra comandos executados
# anteriormente na sessão do terminal.

history


# ------------------------------------------------------------
# 12. EXECUTAR O COMANDO DATE
# ------------------------------------------------------------
# O comando "date" mostra a data e hora atuais do sistema.

date


# ------------------------------------------------------------
# 13. REPETIR O ÚLTIMO COMANDO
# ------------------------------------------------------------
# O operador "!!" executa novamente o último comando
# digitado no terminal.
#
# Neste laboratório, após executar "date", o comando "!!"
# pode ser utilizado para executar "date" novamente.

!!


# ============================================================
# RECURSOS DO BASH PRATICADOS
# ============================================================

# ------------------------------------------------------------
# AUTOCOMPLETE
# ------------------------------------------------------------
# A tecla TAB pode ser utilizada para completar comandos
# e outros elementos no terminal.
#
# Exemplo:
#
# Digite:
# whoa
#
# Pressione TAB para completar:
#
# whoami


# ------------------------------------------------------------
# PESQUISA REVERSA DO HISTÓRICO
# ------------------------------------------------------------
# A combinação CTRL + R inicia uma pesquisa reversa no
# histórico de comandos do Bash.
#
# Depois de pressionar CTRL + R, digite parte do comando
# que deseja localizar.
#
# Exemplo:
#
# CTRL + R
# TZ
#
# O Bash poderá localizar comandos anteriores relacionados
# ao termo pesquisado.


# ------------------------------------------------------------
# NAVEGAÇÃO PELO HISTÓRICO
# ------------------------------------------------------------
# As teclas ↑ e ↓ podem ser utilizadas para navegar pelos
# comandos anteriormente executados no terminal.


# ============================================================
# CONEXÃO SSH
# ============================================================

# A conexão deste laboratório foi realizada utilizando:
#
# Cliente: PuTTY
# Sistema local: Windows
# Protocolo: SSH
# Porta: 22
# Usuário: ec2-user
# Chave privada: labsuser.ppk
#
# A chave .ppk foi configurada diretamente no PuTTY.
#
# Portanto, o comando SSH abaixo NÃO foi utilizado para
# realizar a conexão neste laboratório.


# ------------------------------------------------------------
# CONEXÃO SSH COM OPENSSH - REFERÊNCIA
# ------------------------------------------------------------
# Em ambientes Linux/macOS, uma conexão equivalente poderia
# ser realizada utilizando OpenSSH com uma chave .pem.
#
# ssh -i labsuser.pem ec2-user@<public-ip>
#
# Esse comando é apenas uma referência e não representa
# a forma utilizada neste laboratório.


# ------------------------------------------------------------
# PERMISSÕES DA CHAVE .PEM - REFERÊNCIA
# ------------------------------------------------------------
# Quando uma chave .pem é utilizada diretamente com OpenSSH,
# normalmente suas permissões são restringidas:
#
# chmod 400 labsuser.pem
#
# Esse comando não foi necessário neste laboratório porque
# a conexão foi feita utilizando labsuser.ppk através do PuTTY.
```
