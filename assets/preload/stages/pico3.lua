function onCreate()

	makeLuaSprite('bg','stages/pico3/bg', -1400, -670);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.6, 1.6)

	makeAnimatedLuaSprite('klei', 'stages/pico3/kleitin', 1200, 370);
	addAnimationByPrefix('klei', 'kleitin', 'kleitin', 8, true);
	scaleObject('klei', 1, 1);

	makeAnimatedLuaSprite('daniel', 'stages/pico3/daniel', -500, 400);
	addAnimationByPrefix('daniel', 'daniel', 'danieldance', 24, true);
	scaleObject('daniel', 1, 1);

	addLuaSprite('bg', false);
	addLuaSprite('daniel', true);
	addLuaSprite('klei', true);

end