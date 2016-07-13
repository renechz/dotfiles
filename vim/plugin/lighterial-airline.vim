if exists('g:flaterial_airline') && g:flaterial_airline
  let g:airline#themes#lighterial#palette = {}

  let s:normal1 = [ "#95a5a6", "#2ecc71", 248, 41 ]
  let s:normal2 = [ "#bdc3c7", "#34495e", 7, 238 ]
  let s:normal3 = [ "#1abc9c", "#95a5a6", 37, 248 ]
  let g:airline#themes#lighterial#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)

  let s:insert1 = [ "#40c4ff", "#1abc9c", 81, 37 ]
  let s:insert2 = [ "#ecf0f1", "#40c4ff", 255, 81 ]
  let s:insert3 = [ "#ecf0f1", "#2980b9", 255, 31 ]
  let g:airline#themes#lighterial#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)

  let s:replace1 = [ "#ecf0f1", "#ff5252", 255, 203 ]
  let s:replace2 = [ "#95a5a6", "#1abc9c", 248, 37 ]
  let s:replace3 = [ "#ecf0f1", "#2980b9", 255, 31 ]
  let g:airline#themes#lighterial#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

  let s:visual1 = [ "#ff5252", "#d35400", 203, 166 ]
  let s:visual2 = [ "#ff5252", "#f39c12", 203, 214 ]
  let s:visual3 = [ "#ecf0f1", "#ff5252", 255, 203 ]
  let g:airline#themes#lighterial#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

  let s:inactive1 = [ "#ecf0f1", "#95a5a6", 255, 248 ]
  let s:inactive2 = [ "#ecf0f1", "#95a5a6", 255, 248 ]
  let s:inactive3 = [ "#ecf0f1", "#95a5a6", 255, 248 ]
  let g:airline#themes#lighterial#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)
endif