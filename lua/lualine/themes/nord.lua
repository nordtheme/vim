local colors = {
  nord0        = '#2e3440',
  nord1        = '#3b4252',
  nord2        = '#434c5e',
  nord3        = '#4c566a',
  nord4        = '#d8dee9',
  nord5        = '#e5e9f0',
  nord6        = '#eceff4',
  nord7        = '#8fbcbb',
  nord8        = '#88c0d0',
  nord9        = '#81a1c1',
  nord10       = '#5e81ac',
  nord11       = '#bf616a',
  nord12       = '#d08770',
  nord13       = '#ebcb8b',
  nord14       = '#a3be8c',
  nord15       = '#b48ead',
}
return {
  normal = {
    a = {bg = colors.nord8, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  },
  insert = {
    a = {bg = colors.nord6, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  },
  visual = {
    a = {bg = colors.nord7, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  },
  replace = {
    a = {bg = colors.nord13, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  },
  command = {
    a = {bg = colors.nord8, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  },
  inactive = {
    a = {bg = colors.nord8, fg = colors.nord1, gui = 'bold'},
    b = {bg = colors.nord1, fg = colors.nord5},
    c = {bg = colors.nord3, fg = colors.nord5}
    x = {bg = colors.nord3, fg = colors.nord5},
    y = {bg = colors.nord1, fg = colors.nord5},
    z = {bg = colors.nord3, fg = colors.nord5}
  }
}
