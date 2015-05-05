if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/dotties/private/unfuddle ]; then
    source ~/dotties/private/unfuddle
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
