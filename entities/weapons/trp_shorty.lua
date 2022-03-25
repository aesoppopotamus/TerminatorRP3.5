AddCSLuaFile()

SWEP.Base					= "tekka_base"

SWEP.PrintName 				= "Shorty"

SWEP.Category 				= "ZRP"

SWEP.AdminOnly 				= true
SWEP.Spawnable 				= true

SWEP.ViewModel 				= Model("models/tnb/weapons/c_shorty.mdl")
SWEP.WorldModel 			= Model("models/tnb/weapons/w_shorty.mdl")

SWEP.UseHands 				= true



SWEP.ClipSize 				= 6
SWEP.FireDelay 				= -1

SWEP.AmmoCaliber 			= "12ga"

SWEP.FireSound 				= soundscript.AddFire("WEAPON_SHOTGUN", "tekka/weapons/weapon_shotgun.wav", 140)

SWEP.UseFireAnimationHip 	= true
SWEP.UseFireAnimationADS 	= true
SWEP.UseReloadAnimation 	= true

SWEP.Firemodes 				= {
	{Mode = "firemode_semi"}
}

SWEP.Recoil 				= 0.5

SWEP.AimCone 				= 0.01
SWEP.HipCone 				= 0.01

SWEP.Animations = {
	fire = {"shoot1", "shoot2"},
	reload = "start_reload",
	reloadfinish = "after_reload",
	reloadinsert = "insert"
}

SWEP.HoldType 			= "smg"
SWEP.HoldTypeLowered 	= "passive"

SWEP.DefaultOffset = {
	ang = Vector(0, 0, 0),
	pos = Vector(-2, -6, 1)
}

SWEP.AimOffset = {
	ang = Vector(0, 0, 0),
	pos = Vector(-7.9, -5, 2.8)
}

SWEP.LoweredOffset = {
	ang = Vector(-15, 5, 0),
	pos = Vector(0, 0, 0)
}
