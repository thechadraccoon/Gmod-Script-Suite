-- Please don't edit this. Use config file instead. located @ /lua/racc-script-suite/config.lua. thx <3
if GetGlobalBool(racctimerhudenabled) == true then

    local function timerlabeltextupdater()

        timerlabeltext = string.ToMinutesSeconds( GetGlobalBool(racctimer) )

        timer.Simple( 1, timerlabeltextupdater() )
    end

    timer.Simple( 1, timerlabeltextupdater() )

    local Frame = vgui.Create( "DFrame" )
    Frame:SetTitle( "" )
    Frame:SetSize( ScrW() * 100 / 1920, ScrH() * 100 / 1080 )
    Frame:SetPos( ScrH() / 10.8, ScrW() / 2.5)
    Frame:SetDraggable( false )
    Frame:ShowCloseButton( false )
    Frame.Paint = function( self, w, h ) -- 'function Frame:Paint( w, h )' works too
        draw.RoundedBox( 0, 0, 0, w, h, Color( 255, 255, 255, 255 ) ) -- Draw a white box instead of the frame
    end

    local titlelabel = vgui.Create( "DLabel", Frame )
    titlelabel:SetText( GetGlobalBool(racctimertitle) )
    titlelabel:SetTextColor( Color( 255, 255, 255 ) )
    titlelabel:CenterHorizontal(0.5)
    titlelabel:CenterVertical(0.25)

    local timerlabel = vgui.Create( "DLabel", Frame )
    timerlabel:SetText( timerlabeltext )
    timerlabel:SetTextColor( Color( 255, 255, 255 ) )
    timerlabel:CenterHorizontal(0.5)
    timerlabel:CenterVertical(0.75)


else return
end