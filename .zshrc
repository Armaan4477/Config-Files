export CPATH="/opt/homebrew/include:$CPATH"
export LIBRARY_PATH="/opt/homebrew/lib:$LIBRARY_PATH"
export CPLUS_INCLUDE_PATH="/opt/homebrew/include:$CPLUS_INCLUDE_PATH"
export PATH="/usr/local/bin:$PATH"
alias gcc='/opt/homebrew/bin/gcc-15'
alias g++='/opt/homebrew/bin/g++-15'
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

alias models='ollama list'
alias deepseek='ollama run deepseek-r1:14b'
alias dolphin='ollama run dolphin-mistral:7b'
alias models_update='ollama pull deepseek-r1:14b;ollama pull dolphin-mistral:7b'
alias mysql='/usr/local/mysql/bin/mysql -u root -p'
alias update='brew update; brew upgrade; brew outdated --cask --greedy --verbose; brew cleanup -s --prune=all'

export PATH="/opt/homebrew/opt/python@3.13/bin:$PATH"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
