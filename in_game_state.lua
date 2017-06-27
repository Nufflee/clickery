InGameState = State:extend()

function InGameState:init()
	InGameState.super.init(self)

	self.name = "ingame"
end

function InGameState:loadObject(layer, obj)

end

function InGameState:destroy()
	InGameState.super.destroy(self)
end

function InGameState:update(dt)
	InGameState.super.update(self, dt)

	if(UI.button("Click me", 0, 0, 64, 22)) then
		log.info("Clicked!")
	end
end

function InGameState:draw()
	InGameState.super.draw(self)
end
