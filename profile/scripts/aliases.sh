# MATT DEV ENV
echo 'sourced custom aliases';

# MANAGE BASH PROFILE
alias oz='vim ~/.bashrc'
alias oza='vim ~/.bash_aliases'
alias sz='source ~/.bashrc; echo sourced'
alias sagi='sudo apt-get install'


# ENV VARIABLES
export DOWN=~/Downloads/
export DESKTOP=~/Desktop/
export CS=~/cs/
export DATA=$CS/.datasets/
export NOTES=~/notes/

# MANAGE PYTHON VENV
alias ve='python3 -m venv .venv'
alias ae='deactivate &> /dev/null; source ./.venv/bin/activate'
alias de='deactivate'

# VERBOSE COMMANDS
alias mv='mv -v';
alias cp='cp -v';
alias rm='rm -v';
alias mkdir='mkdir -v';

# BREW SHORTCUT
alias formula='open -a Google\ Chrome https://formulae.brew.sh/formula/r';

## OPENING FILES
alias ot='open -a terminal';
alias of='open -R'; # reveal in finder
alias og='open -a Google\ Chrome';

# CONVENIENCE COMMANDS
alias zip='zip -r'
alias tree='clear;tree --dirsfirst -CN'
