return { 
  "oxfist/night-owl.nvim", 
  name = "night-owl", 
  priority = 1000,
  config = function() 
    vim.cmd("colorscheme night-owl")
  end
}