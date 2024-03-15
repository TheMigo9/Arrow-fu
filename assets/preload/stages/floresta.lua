function onCreate()

	makeLuaSprite('bg','stages/shaggy/bg', -3000, -1050);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 2.5, 2.5)

	makeLuaSprite('l3','stages/shaggy/layer3', -3000, -1050);
	setScrollFactor('l3', 1, 1);
	scaleObject('l3', 2, 2)

	makeLuaSprite('l2','stages/shaggy/layer2', -2600, -1050);
	setScrollFactor('l2', 1.1, 1.1);
	scaleObject('l2', 1, 1)

	addLuaSprite('bg', false);
	addLuaSprite('l3', true);
	addLuaSprite('l2', true);

end