function onCreate()
    --Iterate over all notes
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pico bullet' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'SHOOTNOTE_assets'); --Change texture


            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let BF's notes get ignored
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
            end
        end
    end
end

local shootAnims = {"singLEFT-shoot", "singDOWN-shoot", "singUP-shoot", "singRIGHT-shoot"}
local dodgeAnims = {"singLEFT-dodge", "singDOWN-dodge", "singUP-dodge", "singRIGHT-dodge"}
function goodNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'Pico bullet' then
        if getProperty('dad.curCharacter') == 'dono-gun' then
            characterPlayAnim('dad', shootAnims[direction + 1], true);
			playSound('shoot', 0.6);
        elseif getProperty('dad.curCharacter') == 'dono-gun' then
            curDad = getProperty('dad.curCharacter');
            setProperty('dad.curCharacter', 'dono-gun');
            characterPlayAnim('dad', shootAnims[direction + 1], true);
			characterPlayAnim('singLEFT-shoot', 'shoot', true);
            runTimer('shoot', 1, 1);
			playSound('shoot', 0.6);
		elseif getProperty('dad.curCharacter') == 'dono-gun' then
			playSound('shoot', 0.6);
        end
        setProperty('dad.specialAnim', true);
        if getProperty('bf.curCharacter') == 'bidu-gold-bullet' then
            characterPlayAnim('boyfriend', dodgeAnims[direction + 1], true);
        else
            characterPlayAnim('boyfriend', 'singUP-dodge', true);
            characterPlayAnim('stages/pico3/kleitin', 'kleisusto', true);
            characterPlayAnim('dad', 'singUP-shoot', true);
	    characterPlayAnim('girlfriend', 'scared', true);
        end
        setProperty('boyfriend.specialAnim', true);
	setProperty('girlfriend.specialAnim', true);
        cameraShake('camGame', 0.01, 0.2);
    end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Pico bullet' then
	  curHealth = getProperty('health');
		if curHealth > 1 then
		damageValue = curHealth - 1;
		setProperty('health', damageValue);
		else
		setProperty('health', - 50);
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'bleed' then
        setProperty('health', getProperty('health')-0.001);
    end
    if tag == 'sho0t' then 
        setProperty('dad.curCharacter', curDad);
    end
end