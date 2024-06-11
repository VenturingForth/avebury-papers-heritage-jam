local TRIGGER = script.parent

function OnInteracted(trigger, other)
	if other:IsA("Player") then
		other:TransferToScene("Main", { spawnKey = "entryAvebury" })
		print(trigger.name .. ": Trigger Interacted " .. other.name)
	end
end

TRIGGER.interactedEvent:Connect(OnInteracted)
