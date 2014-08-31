export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
alias l=ls


alias sscroot='ssh root@10.5.27.214'
alias sscadmin='ssh root@10.5.27.214'

alias sscroot1='ssh root@10.5.27.183'
alias sscadmin1='ssh root@10.5.27.183'

alias sscroot2='ssh root@10.5.23.224'
alias sscadmin2='ssh root@10.5.23.224'

alias sscroot3='ssh root@10.5.23.242'
alias sscadmin3='ssh root@10.5.23.242'

alias oak612='ssh root@oak-sh612.lab.nbttech.com'


alias sschost="ssh sscadmin@10.5.27.155"
alias chert="ssh chert.lab.nbttech.com"
alias pyrite="ssh pyrite.lab.nbttech.com"

alias ..="cd .."
alias ...="cd ../cd .."
alias ....="cd ../cd ../cd .."
alias .....="cd ../cd ../cd ../cd .."
#alias update_diffs="scp -r chert.lab.nbttech.com:/u/anupatel/diffs/*.diff /Users/anupatel/diffs/"
alias update_diffs="rsync -avz -e ssh anupatel@chert.lab.nbttech.com:/u/anupatel/diffs/* ~/diffs/"
alias upweb3mod="scp -r /Users/anupatel/workspace/rvbd/trunk/mgmt/appliances/rbt_ssc/src/bin/web3/modules/ssc/* root@10.5.27.214:/opt/tms/web3/modules/ssc/ > /dev/null"
alias cdweb3="cd /Users/anupatel/workspace/rvbd/trunk/mgmt/appliances/rbt_ssc/src/bin/web3/modules/ssc/"
alias vvim='vim -O'

alias sites="cd /Users/anupatel/Sites"


alias skype1="sudo nohup /Applications/Skype.app/Contents/MacOS/Skype &"
alias rpi="ssh pi@10.27.1.181"


##
# Your previous /Users/anupatel/.bash_profile file was backed up as /Users/anupatel/.bash_profile.macports-saved_2014-05-21_at_14:28:45
##

# MacPorts Installer addition on 2014-05-21_at_14:28:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias generate_password="openssl rand -base64 6"


genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=8
    LC_CTYPE=C tr -dc A-Za-z0-9_\! < /dev/urandom | head -c ${l} | xargs
}

#generatelicense() {
#    ssh anupatel@chert.lab.nbttech.com ~cliu/swissarmy/genalllicense.sh $1 VLAB
#}

install_vim(){
    ssh anupatel@chert.lab.nbttech.com "cd RPMS; ./install_vim.sh $*"
}

ssc_install_vlab_license(){
    python ~/workspace/initial_config_ssc/ssc_ssh_initial_configuration.pyc $*
}


#aliases from gavin
alias findphp="find . -path '*/sfLog4Php' -prune -o -path '*/.??*' -prune -o -path '*/debug' -prune -o -path '*/yui*' -prune -o -path '*/.svn' -prune -o -path ./symfony -prune , -type f -a  \( -name '*.php' -o -name '*.css' -o -name '*.js' \) -print0"  
function greppvi() { vi `findphp | xargs -0 /bin/grep -iEl $*`; }

export PATH=/usr/local/bin:$PATH
if [ -d "$HOME/Library/Python/2.7/bin" ]; then
        PATH="$HOME/Library/Python/2.7/bin:$PATH"
fi
if [ -f $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh ]; then
        source $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
fi
#. $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
