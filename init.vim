if exists('g:vscode')
  source $HOME/.config/nvim/config/vscode.vim
else
  source $HOME/.config/nvim/config/settings.vim
  source $HOME/.config/nvim/config/keymaps.vim
  source $HOME/.config/nvim/config/plugins/vim_plug.vim
  source $HOME/.config/nvim/config/plugins/plugins.vim
  source $HOME/.config/nvim/config/plugins/coc.vim
  source $HOME/.config/nvim/config/colour.vim
endif
