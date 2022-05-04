-- load standard vis module, providing parts of the Lua API
require('vis')

-- PLUGINS --------------------------------------------------------------------
require('plugins/surround')
require('plugins/statusline')
require('plugins/ins-completion')

-- CONFIGURAÇÕES --------------------------------------------------------------

-- na inicialização
vis.events.subscribe(vis.events.INIT, function()
  	vis:command('set theme zenburn2')
	vis:command('set autoindent')
	vis:command('set tabwidth 4')
end)

-- ao abrir uma janela
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command('set relativenumbers')
end)

-- adicionar syntax Rmarkdown
vis.ftdetect.filetypes.Rmarkdown = {
	ext = { "%.Rmd$", "%.rmd$", },
}

-- por tipo de arquivo
vis.ftdetect.filetypes.markdown.cmd = {
	"set colorcolumn 81",
	"map-window insert <M-b> ```<Enter><Enter>```<Up>",
}

-- COMANDOS -------------------------------------------------------------------

vis:command_register('xsp', function(argv) -- nova janela X11
	local file = vis.win.file
	local path = argv[1] or file.path
	if not os.getenv("DISPLAY") then
		vis:info("Erro: servidor X não identificado")
		return
	end
	local cmd = string.format('${TERMINAL-st} -e vis "%s" &', path)
	os.execute(cmd)
end, "Abrir arquivo em nova janela X11")

vis:command_register('tsp', function(argv) -- novo painel no terminal, via dvtm(1)
	local file = vis.win.file
	local path = argv[1] or file.path
	local fifo = os.getenv("DVTM_CMD_FIFO")
	if not fifo then
		vis:info("Erro: variável $DVTM_CMD_FIFO indefinida")
		return
	end
	local cmd = string.format([[echo 'create "vis %s"' >> %s]],
		path:gsub(" ", "\\ "), fifo)
	os.execute(cmd)
end, "Abrir arquivo em novo painel do terminal")
