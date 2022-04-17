-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/spurkmatt_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('spurkmatt', 'characters/spurkmatt', 0, 0)

		addAnimationByPrefix('spurkmatt', 'idle', 'matt idle', 24, true) 
		
        addAnimationByPrefix('spurkmatt', 'singLEFT', 'matt left note', 24, false) 
		
		addAnimationByPrefix('spurkmatt', 'singDOWN', 'matt down note', 24, false) 
		
		addAnimationByPrefix('spurkmatt', 'singUP', 'matt up note', 24, false) 
		
		addAnimationByPrefix('spurkmatt', 'singRIGHT', 'matt right note', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('spurkmatt', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('spurkmatt', true)
		setProperty ("spurkmatt.flipX", true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('spurkmatt.animation.curAnim.name')  ~= null and curBeat % 2 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('spurkmatt','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('spurkmatt.animation.curAnim.name') ~= 'idle' and not getProperty('spurkmatt.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('spurkmatt.animation.curAnim.name') == 'idle' then
                setProperty('spurkmatt.offset.x',-32)
				setProperty('spurkmatt.offset.y',-247)
                
			
			elseif getProperty('spurkmatt.animation.curAnim.name') == 'singLEFT' then
                setProperty('spurkmatt.offset.x',-7)
				setProperty('spurkmatt.offset.y',-276)
              
			
			elseif getProperty('spurkmatt.animation.curAnim.name') == 'singUP' then
                setProperty('spurkmatt.offset.x',-90)
				setProperty('spurkmatt.offset.y',-225)
               
			
			elseif getProperty('spurkmatt.animation.curAnim.name') == 'singDOWN' then
                setProperty('spurkmatt.offset.x',-96)
				setProperty('spurkmatt.offset.y',-264)
                
			
			elseif getProperty('spurkmatt.animation.curAnim.name') == 'singRIGHT' then
                setProperty('spurkmatt.offset.x',-68)
				setProperty('spurkmatt.offset.y',-253)
				
				
		
            end

			
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'spurkmatt_Sing' and noteData == 0 then

	objectPlayAnimation('spurkmatt', 'singLEFT',true);

end

if noteType == 'spurkmatt_Sing' and noteData == 1 then

	objectPlayAnimation('spurkmatt', 'singDOWN',true);

end

if noteType == 'spurkmatt_Sing' and noteData == 2 then

	objectPlayAnimation('spurkmatt', 'singUP',true);

end

if noteType == 'spurkmatt_Sing' and noteData == 3 then

	objectPlayAnimation('spurkmatt', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


