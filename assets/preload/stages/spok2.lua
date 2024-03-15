function onCreate()

	makeLuaSprite('bg1','stages/spoky/bg', -2500, -400);
	setScrollFactor('bg1', 1, 1);
	scaleObject('bg1', 2, 2)

	makeAnimatedLuaSprite('gf', 'stages/spoky/barbara',-1500, 50);
	addAnimationByPrefix('gf', 'barbara', 'dance', 9, true);
	scaleObject('gf', 1, 1);

	makeLuaSprite('luz','stages/spoky/layer2', -1390, -50);
	setScrollFactor('luz', 1, 1);
	scaleObject('luz', 1, 1)

	makeAnimatedLuaSprite('parlantes', 'stages/spoky/spookers_virus',-1300, 650);
	addAnimationByPrefix('parlantes', 'spoolkers', 'SPEAKERS_VIRUS', 9, true);
	scaleObject('parlantes', 1, 1);

        makeLuaSprite('pantalla','stages/spoky/screen', -1390, -50);
	setScrollFactor('pantalla', 1, 1);
	scaleObject('pantalla', 2.3, 2.5)

	addLuaSprite('bg1', false);
	addLuaSprite('gf', true);
	addLuaSprite('luz', false);
	addLuaSprite('parlantes', false);
	addLuaSprite('pantalla', true);

end