# Proxy Settings 
#export http_proxy=http://proxy.iiit.ac.in:8080
#export https_proxy=http://proxy.iiit.ac.in:8080

function unset_all_proxies()
{
    sudo networksetup -setwebproxystate "Wi-Fi" off
    sudo networksetup -setftpproxystate "Wi-Fi" off
    sudo networksetup -setsecurewebproxystate "Wi-Fi" off
    sudo networksetup -setsocksfirewallproxystate "Wi-Fi" off
}

function set_all_proxies()
{
    sudo networksetup -setwebproxy "Wi-Fi" proxy.iiit.ac.in 8080
    sudo networksetup -setftpproxy "Wi-Fi" proxy.iiit.ac.in 8080
    sudo networksetup -setsecurewebproxy "Wi-Fi" proxy.iiit.ac.in 8080
    sudo networksetup -setsocksfirewallproxy "Wi-Fi" proxy.iiit.ac.in 8080
}

function unset_proxy()
{
    unset http_proxy
    unset https_proxy
}

function set_proxy()
{
    export http_proxy=http://proxy.iiit.ac.in:8080
    export https_proxy=http://proxy.iiit.ac.in:8080    
}

# most used command
#alias mostused="""history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10

#"path specifications for coreutils"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#"man pages path settings"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

#"path specifications for gnu-sed"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
#"man pages path settings"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

#settings for bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
#"color my shell : "
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
export PS1="\[\e[0;32m\]\h\[\e[0m\] @ \[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\] "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls="ls -l --color=auto"

#for folding sections
set modelines=1
# vim:foldmethod=marker:foldlevel=0

