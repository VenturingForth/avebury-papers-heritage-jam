-- Ensure this script is within a ClientContext

-- Reference to the text component (UI Text)
local TEXT_COMPONENT = script:GetCustomProperty("WelcomeMessage"):WaitForObject()

-- Ensure we have a valid player reference
local PLAYER = Game.GetLocalPlayer()

-- Initial text to display
local INITIAL_TEXT = "Welcome, seeker, to Avebury. These ancient stones have witnessed countless tales. Today, you will uncover the voices lost to time. Let the echoes of the past guide you."
local BLANK_TEXT = ""

-- Distance tracker
local initialPosition = PLAYER:GetWorldPosition()
local distanceMoved = 0

-- Function to update the text
local function UpdateText(newText)
    TEXT_COMPONENT.text = newText
end

-- Initialize with the initial text
UpdateText(INITIAL_TEXT)

-- Tick function to track player movement
function Tick(deltaTime)
    local currentPosition = PLAYER:GetWorldPosition()
    distanceMoved = distanceMoved + (currentPosition - initialPosition).size
    initialPosition = currentPosition
   
    -- Check if player has moved 300 units (roughly 3 steps)
    if distanceMoved >= 500 then
        UpdateText(BLANK_TEXT)
    end
end