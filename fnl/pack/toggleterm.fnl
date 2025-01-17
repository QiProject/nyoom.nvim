(local {: lazy-require!} (require :utils.lazy-require))
(local {: setup } (lazy-require! :toggleterm))

(setup {:direction :float})


(fn _G.set_terminal_keymaps []
    (local opts {:noremap true}
        (vim.api.nvim_buf_set_keymap 0 't' '<esc>' '[[<C-\><C-n>]]' opts)
        (vim.api.nvim_buf_set_keymap 0 't' 'jk' '[[<C-\><C-n>]]' opts)
        (vim.api.nvim_buf_set_keymap 0 't' :<C-h> '[[<C-\><C-n><C-W>h]]' opts)
        (vim.api.nvim_buf_set_keymap 0 't' :<C-j> '[[<C-\><C-n><C-W>j]]' opts)
        (vim.api.nvim_buf_set_keymap 0 't' :<C-k> '[[<C-\><C-n><C-W>k]]' opts)
        (vim.api.nvim_buf_set_keymap 0 't' :C-l '[[<C-\><C-n><C-W>l]]' opts)))

      ;(vim.api.nvim_replace_termcodes code true true true)))
      ;(vim.api.nvim_replace_termcodes code true true true)))

(vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()')
