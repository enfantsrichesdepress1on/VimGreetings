if exists('g:loaded_myplugin')
  finish
endif
let g:loaded_myplugin = 1
let g:myplugin_launch_count_file = expand('~/.vim/myplugin_launch_count.txt')
function! MyPluginGetLaunchCount()
  if filereadable(g:myplugin_launch_count_file)
    let l:count = readfile(g:myplugin_launch_count_file)[0]
    let l:count = str2nr(l:count) + 1
  else
    let l:count = 1
  endif
  call writefile([string(l:count)], g:myplugin_launch_count_file, 'w')
  return l:count
endfunction
let l:launch_count = MyPluginGetLaunchCount()
echo "Доброе утро, Никита. Удачного написания кода!"
echo "Vim был запущен " . l:launch_count . " раз(а)."
