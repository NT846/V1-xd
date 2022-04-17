-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('gfstand', 'characters/GF_assets', 0, 0)

		addAnimationByPrefix('gfstand', 'idle', 'GF Dancing Beat0', 24, false) 
		
        addAnimationByPrefix('gfstand', 'singLEFT', 'GF left note', 24, false) 
		
		addAnimationByPrefix('gfstand', 'singDOWN', 'GF down note', 24, false) 
		
		addAnimationByPrefix('gfstand', 'singUP', 'GF up note', 24, false) 
		
		addAnimationByPrefix('gfstand', 'singRIGHT', 'GF right note', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('gfstand', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('gfstand', false)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('gfstand.animation.curAnim.name')  ~= null and curBeat % 1 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('gfstand','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('gfstand.animation.curAnim.name') ~= 'idle' and not getProperty('gfstand.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('gfstand.animation.curAnim.name') == 'idle' then
                setProperty('gfstand.offset.x',-32)
				setProperty('gfstand.offset.y',-247)
                
			
			elseif getProperty('gfstand.animation.curAnim.name') == 'singLEFT' then
                setProperty('gfstand.offset.x',-7)
				setProperty('gfstand.offset.y',-276)
              
			
			elseif getProperty('gfstand.animation.curAnim.name') == 'singUP' then
                setProperty('gfstand.offset.x',-90)
				setProperty('gfstand.offset.y',-225)
               
			
			elseif getProperty('gfstand.animation.curAnim.name') == 'singDOWN' then
                setProperty('gfstand.offset.x',-96)
				setProperty('gfstand.offset.y',-264)
                
			
			elseif getProperty('gfstand.animation.curAnim.name') == 'singRIGHT' then
                setProperty('gfstand.offset.x',-68)
				setProperty('gfstand.offset.y',-253)
				
				
		
            end

			
end

function opponentNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'gfstand_Sing' and noteData == 0 then

	objectPlayAnimation('gfstand', 'singLEFT',true);

end

if noteType == 'gfstand_Sing' and noteData == 1 then

	objectPlayAnimation('gfstand', 'singDOWN',true);

end

if noteType == 'gfstand_Sing' and noteData == 2 then

	objectPlayAnimation('gfstand', 'singUP',true);

end

if noteType == 'gfstand_Sing' and noteData == 3 then

	objectPlayAnimation('gfstand', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


