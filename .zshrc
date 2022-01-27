# This enables Instant Prompt, which I like to turn off...
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Oh My Zsh Settings
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/anthonyjdella/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/anthonyjdella/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anthonyjdella/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/anthonyjdella/google-cloud-sdk/completion.zsh.inc'; fi

# Source additional config
source ~/.zsh/var
source ~/.zsh/aliases
source ~/.zsh/path

source $ZSH/oh-my-zsh.sh
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

# Customizing Powerlevel10k...
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
