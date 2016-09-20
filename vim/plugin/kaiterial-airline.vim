if exists('g:kaiterial_airline') && g:kaiterial_airline
  let g:airline#themes#kaiterial#palette = {}

  let s:normal1 = [ "#212121", "#c3e88d", 234, 150 ]
  let s:normal2 = [ "#212121", "#e1ffb4", 234, 193 ]
  let s:normal3 = [ "#c3e88d", "#212121", 150, 234 ]
  let g:airline#themes#kaiterial#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)

  let s:insert1 = [ "#212121", "#82aaff", 234, 111 ]
  let s:insert2 = [ "#212121", "#b2ccd6", 234, 152 ]
  let s:insert3 = [ "#82aaff", "#212121", 111, 234 ]
  let g:airline#themes#kaiterial#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)

  let s:replace1 = [ "#212121", "#ff5370", 234, 203 ]
  let s:replace2 = [ "#212121", "#f07178", 234, 204 ]
  let s:replace3 = [ "#ff5370", "#212121", 203, 234 ]
  let g:airline#themes#kaiterial#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

  let s:visual1 = [ "#212121", "#ffcb6b", 234, 221 ]
  let s:visual2 = [ "#212121", "#f78c6c", 234, 209 ]
  let s:visual3 = [ "#ffcb6b", "#212121", 221, 234 ]
  let g:airline#themes#kaiterial#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

  let s:inactive1 = [ "#424242", "#212121", 238, 234 ]
  let s:inactive2 = [ "#212121", "#424242", 234, 238 ]
  let s:inactive3 = [ "#424242", "#212121", 238, 234 ]
  let g:airline#themes#kaiterial#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
endif