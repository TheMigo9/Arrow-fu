function onCreate()

	makeLuaSprite('bg1','stages/stage/bg', -3500, -1500);
	setScrollFactor('bg1', 1, 1);
	scaleObject('bg1', 3, 3)

	makeLuaSprite('bg2','stages/stage/bg2', -3500, -1500);
	setScrollFactor('bg2', 1, 1);
	scaleObject('bg2', 3, 3)

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