function onCreate()

	makeLuaSprite('bg1','stages/stage/bg', -2800, -800);
	setScrollFactor('bg1', 1, 1);
	scaleObject('bg1', 2.5, 2.5)

	makeLuaSprite('bg2','stages/stage/bg2', -2800, -800);
	setScrollFactor('bg2', 1, 1);
	scaleObject('bg2', 2.5, 2.5)

	addLuaSprite('bg2', false);
	addLuaSprite('bg1', false);


end

function onEvent(name,value1,value2)
 if name == 'Play Animation' then

     if value1 == 'bg1' then
         setProperty('bg1.visible', true);
         setProperty('bg2.visible', false);
end
     if value1 == 'bg2' then
         setProperty('bg1.visible', false);
         setProperty('bg2.visible', true);

end
end
end