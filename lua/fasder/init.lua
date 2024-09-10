-- Define an autocommand to run whenever a buffer is read (i.e., file is opened)
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    -- Get the absolute path of the file being opened
    local filepath = vim.fn.expand("%:p")

    -- Build the shell command with the absolute path
    local cmd = string.format("fasder --add %s", filepath)

    -- Execute the shell command
    os.execute(cmd)
  end,
})
