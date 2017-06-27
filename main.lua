RELEASE = (arg[2] == nil)
DEBUG = not RELEASE
SCALE = 3
SCREEN_WIDTH = love.graphics.getWidth()
SCREEN_HEIGHT = love.graphics.getHeight()
WIDTH = love.graphics.getWidth() / SCALE
HEIGHT = love.graphics.getHeight() / SCALE

libs = require "l2.libs"

for i, m in ipairs(require "require") do
	local succes, message = pcall(require, m)

	if not succes then
		if message:match("not found:") then
			print(message)
			requireDir("l2/" .. m)
		else
			error(message)
		end
	end
end

function love.load()
	game:init(InGameState())

	Input.register({
		[ "click" ] = { "mouse:1" }
	})

	UI.init();

	font = love.graphics.getFont()
end

function love.update(dt)
	libs.update()
	game:update(dt)
end

function love.draw()
	game:draw()

	UI.reset()
end

function love.keypressed(key)
	game:keyPressed(key)
end

function love.mousepressed(x, y, button)
	UI.mouseDown()
	game:mousePressed(x, y, button)
end

function love.mousereleased(x, y, button, isTouch)
	UI.mouseUp()
end

function love.quit()
	game:save()
end
