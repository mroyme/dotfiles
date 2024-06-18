typeset -U path

# MacOS
if [[ "$(uname -s)" == "Darwin" ]]; then

  # Set PATH, MANPATH, etc., for Homebrew.
  if [[ -e '/opt/homebrew/bin/brew' ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  fi

  # GNU grep
  if [[ -e '/opt/homebrew/opt/grep/libexec/gnubin' ]]; then
    path=('/opt/homebrew/opt/grep/libexec/gnubin' $path)
  fi

  # GNU units
  if [[ -e '/opt/homebrew/opt/gnu-units/libexec/gnubin' ]]; then
    path=('/opt/homebrew/opt/gnu-units/libexec/gnubin' $path)
  fi

  # OpenSSL 3
  if [[ -e '/opt/homebrew/opt/openssl@3.0/bin' ]]; then
    path=('/opt/homebrew/opt/openssl@3.0/bin' $path)
  fi

  # JetBrains Toolbox
  if [[ -e "${HOME}/Library/Application Support/JetBrains/Toolbox/scripts" ]]; then
    path+=("${HOME}/Library/Application Support/JetBrains/Toolbox/scripts")
  fi
fi

# Krew
if [[ -e "${KREW_ROOT:-$HOME/.krew}/bin" ]]; then
  path+=("${KREW_ROOT:-$HOME/.krew}/bin:$PATH")
fi

# Emacs / Doom
if [[ -e "${HOME}/.config/emacs/bin" ]]; then
  path+=("${HOME}/.config/emacs/bin")
fi

if [[ -e "${HOME}/.local/bin" ]]; then
  path=("${HOME}/.local/bin:$PATH" $path)
fi

export PATH
