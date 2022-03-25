local PLAYER = {}

PLAYER.DisplayName			= "CombineControl"
PLAYER.TeammateNoCollide	= false
PLAYER.AvoidPlayers			= false

function PLAYER:GetHandsModel()
	local cl_playermodel = GAMEMODE:TranslateModelToPlayer(self.Player:GetModel())
	return player_manager.TranslatePlayerHands(cl_playermodel)
end

function PLAYER:StartMove(move)
end

function PLAYER:FinishMove(move)
end

player_manager.RegisterClass("player_cc", PLAYER, "player_sandbox")

player_manager.AddValidModel("t600_cc", "models/tnb/skynet/t600.mdl")
player_manager.AddValidModel("t800_cc", "models/tnb/skynet/t800.mdl")

player_manager.AddValidHands("t600_cc", "models/tnb/trpweapons/c_arms_t600.mdl", 0, "0000000")
player_manager.AddValidHands("t800_cc", "models/tnb/trpweapons/c_arms_t800.mdl", 0, "0000000")