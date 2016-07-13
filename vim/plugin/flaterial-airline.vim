if exists('g:flaterial_airline') && g:flaterial_airline
  let g:airline#themes#flaterial#palette = {}

  let s:normal1 = [ "#2c3e50", "#69f0ae", 237, 85 ]
  let s:normal2 = [ "#bdc3c7", "#263238", 7, 236 ]
  let s:normal3 = [ "#18ffff", "#2c3e50", 14, 237 ]
  let g:airline#themes#flaterial#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)

  let s:insert1 = [ "#2980b9", "#18ffff", 31, 14 ]
  let s:insert2 = [ "#ecf0f1", "#2980b9", 255, 31 ]
  let s:insert3 = [ "#ecf0f1", "#3498db", 255, 68 ]
  let g:airline#themes#flaterial#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)

  let s:replace1 = [ "#ecf0f1", "#c0392b", 255, 130 ]
  let s:replace2 = [ "#2c3e50", "#18ffff", 237, 14 ]
  let s:replace3 = [ "#ecf0f1", "#3498db", 255, 68 ]
  let g:airline#themes#flaterial#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

  let s:visual1 = [ "#c0392b", "#ffab40", 130, 215 ]
  let s:visual2 = [ "#c0392b", "#e67e22", 130, 172 ]
  let s:visual3 = [ "#ecf0f1", "#c0392b", 255, 130 ]
  let g:airline#themes#flaterial#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

  let s:inactive1 = [ "#34495e", "#2c3e50", 238, 237 ]
  let s:inactive2 = [ "#34495e", "#2c3e50", 238, 237 ]
  let s:inactive3 = [ "#34495e", "#2c3e50", 238, 237 ]
  let g:airline#themes#flaterial#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
endif