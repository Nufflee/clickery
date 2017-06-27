function love.conf(t)
	t.releases = {
		title = "Clickery",
		package = "clickery",
		loveVersion = "0.10.2",
		version = "0.1",
		author = "Nufflee",
		email = nil,
		description = "Clickery is a game about clicking",
		homepage = nil,
		identifier = "clickery",
		excludeFileList = {},
		releaseDirectory = nil
	}

	t.identity = "clickery"
	t.version = "0.10.2"

	t.window.title = "Clickery"
	t.window.icon = "data/images/icon.png"
	t.window.width = 800
	t.window.height = 600
	t.window.resizable = false
	t.console = true
end
