-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- calculator
--
--
-- Created by: Fawaz Mezher
-- Created on: april 2018 
-----------------------------------------------------------------------------------------

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY + 200
enterButton.id = "enter Button"

local firstvariable
local firstvariableTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY , 450, 150 )
firstvariableTextField.id = "firstvariable TextField"

local secondvariable
local secondvariableTextField = native.newTextField( display.contentCenterX + 400, display.contentCenterY , 450, 150 )
secondvariableTextField.id = "secondvariable TextField"

local firstvariabletonumber

local secondvariabletonumber

display.newText("*", 1024, 800, native.systemFont, 300)

local function enterButtonTouch( event )

	answer = 0 
	firstvariable = firstvariableTextField.text 
	secondvariable = secondvariableTextField.text 
    firstvariabletonumber = tonumber( firstvariable )    
    secondvariabletonumber = tonumber( secondvariable )

    if secondvariabletonumber < 0 and firstvariabletonumber < 0 then

			for i = 1,firstvariabletonumber * -1 do 
		    answer = answer + secondvariabletonumber
		    end
		answer = answer * -1

		elseif firstvariabletonumber < 0 then
			for i = 1, secondvariabletonumber do
			answer = answer + firstvariabletonumber
		end
		
		elseif secondvariabletonumber < 0 then 

			for i = 1,firstvariabletonumber do 
			answer = answer + secondvariabletonumber
		end
		
		elseif firstvariabletonumber > 0 and secondvariabletonumber > 0 then

	    	for i = 1,firstvariabletonumber do 
		    answer = answer + secondvariabletonumber 
		end
		
		elseif firstvariabletonumber == 0 or secondvariabletonumber == 0 then 
			display.newText("0", 1024, 1200, native.systemFont, 100)
		else
			display.newText("please enter valid number", 1024, 1200, native.systemFont, 100)
	end

	display.newText(answer, 1024, 1200, native.systemFont, 100)
end


enterButton:addEventListener( "touch", enterButtonTouch )