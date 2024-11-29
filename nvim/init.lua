-- Personal Neovim Configuration of Kyle Beard (kb@kylebeard.com)
if vim.g.vscode then
    require('vscode.options')
    require('vscode.keymaps')
else
    require('beardage.options')
    require('beardage.keymaps')
end
require('beardage.plugins')
