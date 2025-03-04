function love.conf(t)
	t.identity          = "hexachord"

	t.window.title      = "Hexachord"
	t.window.icon       = nil
	t.window.width      = 512
	t.window.height     = 384
	t.window.resizable  = true
	t.window.borderless = false

	t.modules.joystick  = false
	t.modules.physics   = false
	t.modules.touch     = false
	t.modules.video     = false
end