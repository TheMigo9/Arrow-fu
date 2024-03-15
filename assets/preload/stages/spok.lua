function onCreate()

	makeLuaSprite('bg1','stages/spoky/bg', -2500, -400);
	setScrollFactor('bg1', 1, 1);
	scaleObject('bg1', 2, 2)

	makeLuaSprite('bg2','stages/spoky/bg2', -2500, -400);
	setScrollFactor('bg2', 1, 1);
	scaleObject('bg2', 2, 2)

	makeLuaSprite('luz','stages/spoky/layer1', -1390, -50);
	setScrollFactor('luz', 1, 1);
	scaleObject('luz', 1, 1)

	makeAnimatedLuaSprite('parlantes', 'stages/spoky/spookers',-1300, 650);
	addAnimationByPrefix('parlantes', 'spoolkers', 'SPEAKERS', 9, true);
	scaleObject('parlantes', 1, 1);

	addLuaSprite('bg2', false);
	addLuaSprite('bg1', false);
	addLuaSprite('luz', false);
	addLuaSprite('parlantes', false);

end

function onEvent(name,value1,value2)
 if name == 'Play Animation' then

     if value1 == 'bg1' then
         setProperty('bg1.visible', true);
         setProperty('bg2.visible', false);
	 addLuaSprite('parlantes', true);
	 addLuaSprite('luz', true);
end
     if value1 == 'bg2' then
         setProperty('bg1.visible', false);
         setProperty('bg2.visible', true);
	 addLuaSprite('parlantes', true);
	 addLuaSprite('luz', true);

end
end
end