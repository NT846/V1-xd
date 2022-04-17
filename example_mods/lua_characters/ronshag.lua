-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/ronshag_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('ronshag', 'characters/ronshag', 0, 0)

		addAnimationByPrefix('ronshag', 'idle', 'shaggy_idle', 24, false) 
		
        addAnimationByPrefix('ronshag', 'singLEFT', 'shaggy_left', 24, false) 
		
		addAnimationByPrefix('ronshag', 'singDOWN', 'shaggy_down', 24, false) 
		
		addAnimationByPrefix('ronshag', 'singUP', 'shaggy_up', 24, false) 
		
		addAnimationByPrefix('ronshag', 'singRIGHT', 'shaggy_right', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('ronshag', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('ronshag', true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('ronshag.animation.curAnim.name')  ~= null and curBeat % 2 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('ronshag','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('ronshag.animation.curAnim.name') ~= 'idle' and not getProperty('ronshag.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('ronshag.animation.curAnim.name') == 'idle' then
                setProperty('ronshag.offset.x',-16)
				setProperty('ronshag.offset.y',36)
                
			
			elseif getProperty('ronshag.animation.curAnim.name') == 'singLEFT' then
                setProperty('ronshag.offset.x',170)
				setProperty('ronshag.offset.y',-69)
              
			
			elseif getProperty('ronshag.animation.curAnim.name') == 'singUP' then
                setProperty('ronshag.offset.x',-27)
				setProperty('ronshag.offset.y',66)
               
			
			elseif getProperty('ronshag.animation.curAnim.name') == 'singDOWN' then
                setProperty('ronshag.offset.x',-7)
				setProperty('ronshag.offset.y',-120)
                
			
			elseif getProperty('ronshag.animation.curAnim.name') == 'singRIGHT' then
                setProperty('ronshag.offset.x',3)
				setProperty('ronshag.offset.y',3)
				
				
		
            end

			
end

function opponentNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'ronshag_Sing' and noteData == 0 then

	objectPlayAnimation('ronshag', 'singLEFT',true);

end

if noteType == 'ronshag_Sing' and noteData == 1 then

	objectPlayAnimation('ronshag', 'singDOWN',true);

end

if noteType == 'ronshag_Sing' and noteData == 2 then

	objectPlayAnimation('ronshag', 'singUP',true);

end

if noteType == 'ronshag_Sing' and noteData == 3 then

	objectPlayAnimation('ronshag', 'singRIGHT',true);

end

if noteType == 'bothSM_Sing' and noteData == 0 then

	objectPlayAnimation('ronshag', 'singLEFT',true);

end

if noteType == 'bothSM_Sing' and noteData == 1 then

	objectPlayAnimation('ronshag', 'singDOWN',true);

end

if noteType == 'bothSM_Sing' and noteData == 2 then

	objectPlayAnimation('ronshag', 'singUP',true);

end

if noteType == 'bothSM_Sing' and noteData == 3 then

	objectPlayAnimation('ronshag', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


