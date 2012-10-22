
local button = CreateFrame("Button", nil, CompactRaidFrameManager, "SecureHandlerBaseTemplate,SecureHandlerStateTemplate,SecureHandlerEnterLeaveTemplate,SecureHandlerShowHideTemplate")
button:SetAllPoints()

button:SetFrameRef("main", CompactRaidFrameManager)
button:SetFrameRef("display", CompactRaidFrameManagerDisplayFrame)

button:SetAttribute('_onstate-expanded', [[
	if newstate then
		self:RegisterAutoHide(2)
		self:GetFrameRef("main"):SetPoint("TOPLEFT", nil, "TOPLEFT", -7, -140)
		self:GetFrameRef("display"):Show()
	else
		self:GetFrameRef("main"):SetPoint("TOPLEFT", nil, "TOPLEFT", -182, -140)
		self:GetFrameRef("display"):Hide()
	end
]])

button:SetAttribute("_onenter", [[ self:SetAttribute('state-expanded', true) ]])

button:SetAttribute("_onhide", [[
	self:SetAttribute('state-expanded', false)
	self:Show()
]])
