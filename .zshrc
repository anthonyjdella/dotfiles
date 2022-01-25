# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh Settings
# ZSH_THEME="powerlevel10k/powerlevel0k"
COMPLETION_WAITING_DOTS="true"

# Oh My Zsh Plugins
plugins=(
    git
    common-aliases
        # common-aliases
        # Alias     Command
        # l         ls -lFh
        # la        ls -lAFh
        # lr        ls -lRFh
        # lt        ls -ltFh
        # ll        ls -l
        # ldot      ls -ld .*
        # lS        ls -1FSsh
        # lart      ls -1Fcart
        # lrt       ls -1Fcrt
        # zshrc     $EDITOR ~/.zshrc
        # h         history
        # p         (processes for current user)
    copydir
        # copydir
        # copyfile index/
    copyfile
        # copyfile
        # copyfile index.html
    dirhistory
        # dirhistory
        # use Option + Left/Right arrows for history of directories
    osx
        # osx
        # Command       Description
        # tab           Open the current directory in a new tab
        # ofd           Open the current directory in a Finder window
        # pfd           Return the path of the frontmost Finder window
        # pfs           Return the current Finder selection
        # cdf           cd to the current Finder directory
        # pushdf        pushd to the current Finder directory
        # quick-look	Quick-Look a specified file
        # man-preview	Open a specified man page in Preview app
        # showfiles	    Show hidden files
        # hidefiles	    Hide the hidden files
        # music	        Control Apple Music. Use music -h for usage details
        # spotify	    Control Spotify and search by artist, album, track…
    sudo
        # sudo
        # ESC twice to add sudo infront of current command
    web-search
        # web-searcj
        # google "name of search"
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# Powerlevel9k Settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    os_icon
    context
    dir
    vcs
    newline
    status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    time
)
# POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M %m/%d/%Y}"
POWERLEVEL9K_APPLE_ICON=

# Exports and Paths
export ZSH=~/.oh-my-zsh

source $ZSH/oh-my-zsh.sh
source /Users/anthonyjdella/.oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
# source ~/powerlevel10k/powerlevel10k.zsh-theme

export NPM_CONFIG_PREFIX=/usr/local/lib/node_modules
export PATH="$NPM_CONFIG_PREFIX"/bin:"$PATH"
export PATH=$PATH:$HOME/bin
export PATH="$HOME/.basher/bin:$PATH"
export PATH=/Library/Frameworks/Python.framework/Versions/3.10/bin/python:${PATH}

# Alias Settings
alias gs="git status"
alias gp="git pull"
alias ga="git add ."
alias zsh="open ~/.zshrc"
alias finder="ofd"
alias vs="code ."
alias pip="pip3"
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/anthonyjdella/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/anthonyjdella/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anthonyjdella/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/anthonyjdella/google-cloud-sdk/completion.zsh.inc'; fi
