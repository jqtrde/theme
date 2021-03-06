local colors = {
  blue            = '#0087AF',
  teal            = '#005F87',
  green           = '#50A14F',
  darkgreen       = '#008700',
  blueviolet      = '#AF87D7',
  purple          = '#8700AF',
  magenta         = '#D7005F',
  pink            = '#FFD7FF',
  red             = '#DF0000',
  lightorange     = '#E9B96E',
  darkorange      = '#AF5F00',
  bg              = '#F1F3F2',
  gray            = '#585858',
  silver          = '#E4E4E4',
  git_bg          = '#EBEAE2',
  git_fg          = '#413932'
}

return {
  normal = {
    a = {fg = colors.teal,       bg = colors.silver, gui = 'bold'},
    b = {fg = colors.git_fg,     bg = colors.git_bg}, -- only for GIT
    c = {fg = colors.teal,       bg = colors.silver},
    x = {fg = colors.gray,       bg = colors.silver},
    y = {fg = colors.bg,         bg = colors.blue},
    z = {fg = colors.bg,         bg = colors.teal}
  },
  insert = {
    a = {fg = colors.darkgreen,  bg = colors.silver, gui = 'bold'},
    c = {fg = colors.darkgreen,  bg = colors.silver},
    x = {fg = colors.gray,       bg = colors.silver},
    y = {fg = colors.bg,         bg = colors.green},
    z = {fg = colors.bg,         bg = colors.darkgreen}
  },
  visual = {
    a = {fg = colors.bg,         bg = colors.purple, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.blueviolet},
    y = {fg = colors.gray,       bg = colors.blueviolet},
    z = {fg = colors.bg,         bg = colors.purple}
  },
  replace = {
    a = {fg = colors.bg,         bg = colors.magenta, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.pink},
    y = {fg = colors.gray,       bg = colors.pink},
    z = {fg = colors.bg,         bg = colors.magenta}
  },
  command = {
    a = {bg = colors.darkorange, fg = colors.bg, gui = 'bold'},
    c = {fg = colors.gray,       bg = colors.lightorange},
    y = {fg = colors.gray,       bg = colors.lightorange},
    z = {fg = colors.bg,         bg = colors.darkorange}
  },
  inactive = {
    a = {fg = colors.gray, bg = colors.silver, gui = 'bold'},
    b = {fg = colors.gray, bg = colors.silver},
    c = {fg = colors.gray, bg = colors.silver}
  }
}
