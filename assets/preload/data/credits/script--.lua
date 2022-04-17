function onCreate()

addLuaScript('lua_characters/ronshag')
setProperty('ronshag.x', -400)
setProperty('ronshag.y', 150)

addLuaScript('lua_characters/ronmatt')
setProperty('ronmatt.x', -675)
setProperty('ronmatt.y', 225)

addLuaScript('lua_characters/bfbside')
setProperty('bfbside.x', 1450)
setProperty('bfbside.y', 400)

addLuaScript('lua_characters/bfneo')
setProperty('bfneo.x', 1650)
setProperty('bfneo.y', 450)

addLuaScript('lua_characters/bfplayer')
setProperty('bfplayer.x', 1775)
setProperty('bfplayer.y', 525)

addLuaScript('lua_characters/bffl')
setProperty('bffl.x', 1950)
setProperty('bffl.y', 600)

addLuaScript('lua_characters/bfrs')
setProperty('bfrs.x', 2100)
setProperty('bfrs.y', 675)

addLuaScript('lua_characters/gfstand')
setProperty('gfstand.x', 450)
setProperty('gfstand.y', -175)

end

function opponentNoteHit()
       health = getProperty('health')
  if getProperty('health') > 0.1 then
       setProperty('health', health- 0.02);
   end
end