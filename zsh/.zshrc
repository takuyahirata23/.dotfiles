# Path to your oh-my-zsh installation.
export ZSH="/Users/takuya/.oh-my-zsh"

ZSH_THEME="robbyrussell"



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Alias
alias ghv="gh repo view --web"
# Create dev environment
alias dev-npm="zsh ~/.shell-scripts/dev-npm.sh"
alias dev-elixir="zsh ~/.shell-scripts/dev-elixir.sh"
alias dev-test="zsh ~/.shell-scripts/dev-test.sh"


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


eval "$(direnv hook zsh)"


export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"

export KERL_CONFIGURE_OPTIONS="--with-ssl=/opt/homebrew/opt/openssl@1.1 --without-javac"

. /opt/homebrew/opt/asdf/asdf.sh
