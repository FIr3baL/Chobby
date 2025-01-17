--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function widget:GetInfo()
	return {
		name      = "Command Buffering",
		desc      = "Buffers commands while ingame.",
		author    = "GoogleFrog",
		date      = "30 April 2018",
		license   = "GNU LGPL, v2.1 or later",
		layer     = -100005,
		enabled   = true  --  loaded by default?
	}
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Variables

local bufferBypass = {
	BattleDebriefing = true,
	CustomGameModeResponse = true,
	SetModOptions = true,
	SetRectangle = true,
	UserProfile = true,
	RemoveBot = true,
	UpdateBotStatus = true,
	Welcome = true,
	Ping = true,
	AreYouReady = true,
	AreYouReadyUpdate = true,
	AreYouReadyResult = true,
	MatchMakerSetup = true,
	MatchMakerStatus = true,
	MatchMakerQueueRequestFailed = true,
	SiteToLobbyCommand = true,
	ConnectSpring = true,
	BattleUpdate = true,
	BattleAdded = true,
	BattleRemoved = true,
	BattlePoll = true,
	BattlePollOutcome = true,
	UpdateUserBattleStatus = true,
	User = true,
	JoinedBattle = true,
	JoinBattleSuccess = true,
	RejoinOption = true,
	LeftBattle = true,
	LoginResponse = true,
	RegisterResponse = true,
	DefaultGameChanged = true,
	DefaultEngineChanged = true,
}

local CMD_PER_UPDATE = 14

function widget:ActivateGame()
	local lobby = WG.LibLobby.lobby
	if not lobby.bufferCommandsEnabled then
		lobby.bufferBypass = bufferBypass
		lobby.bufferCommandsEnabled = true
	end
	--WG.Chobby.interfaceRoot.GetChatWindow():ClearHistory()
	--WG.BattleRoomWindow.ClearChatHistory()
end

function widget:Update()
	local lobby = WG.LibLobby.lobby
	local Configuration = WG.Chobby.Configuration
	local isLobbyVisible = Configuration:IsLobbyVisible() and not Configuration.enableDebugBuffer
	if not isLobbyVisible then
		if not lobby.bufferCommandsEnabled then
			lobby.bufferBypass = bufferBypass
			lobby.bufferCommandsEnabled = true
		end
		return
	end

	lobby.bufferCommandsEnabled = false
	local repetitions = 1
	while repetitions <= CMD_PER_UPDATE and lobby:ProcessBuffer() do
		repetitions = repetitions + 1
	end
end
