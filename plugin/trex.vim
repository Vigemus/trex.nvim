command! -nargs=0 TrexFlush lua require("trex").flush()
command! -nargs=0 TrexNext lua require("trex").next()
command! -nargs=0 TrexPrev lua require("trex").previous()
command! -nargs=0 TrexInvoke lua require("trex").invoke()
command! -nargs=? TrexAttach lua require("trex").attach(<f-args>)

autocmd Filetype clojure nmap <buffer> <leader>so :lua require ("trex").fts.clojure.require_ns()<CR>
autocmd Filetype clojure nmap <buffer> <leader>si :lua require ("trex").fts.clojure.lein_import()<CR>
autocmd Filetype clojure nmap <buffer> <leader>sn :lua require ("trex").fts.clojure.switch_ns()<CR>
