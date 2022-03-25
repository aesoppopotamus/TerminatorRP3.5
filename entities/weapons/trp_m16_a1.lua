AddCSLuaFile()

SWEP.Base					= "tekka_base"

SWEP.PrintName 				= "M16A1"

SWEP.Category 				= "ZRP"

SWEP.AdminOnly 				= true
SWEP.Spawnable 				= true

SWEP.ViewModel 				= Model("models/tnb/weapons/c_m16.mdl")
SWEP.WorldModel 			= Model("models/tnb/weapons/w_m16.mdl")

SWEP.UseHands 				= true

SWEP.VMBodyGroups 			= {6}
SWEP.WMBodyGroups 			= {6}

SWEP.ClipSize 				= 20
SWEP.FireDelay 				= 0.11

SWEP.AmmoCaliber 			= "5.56x45mm"

SWEP.FireSound 				= soundscript.AddFire("WEAPON_M4", "tekka/weapons/weapon_m4.wav", 140)

SWEP.UseFireAnimationHip 	= true
SWEP.UseFireAnimationADS 	= false
SWEP.UseReloadAnimation 	= true

SWEP.Firemodes 				= {
	{Mode = "firemode_auto"}
}

SWEP.Recoil 				= 1.5

SWEP.AimCone 				= 0.01
SWEP.HipCone 				= 0.04

SWEP.Animations = {
	reload = "reload",
	fire = {"shoot1", "shoot2"}
}

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.DefaultOffset = {
	ang = Vector(0, 0, 0),
	pos = Vector(-2, -7, 0)
}

SWEP.AimOffset = {
	ang = Vector(0, 0, 0),
	pos = Vector(-6.5, -13, 1.15)
}

SWEP.LoweredOffset = {
	ang = Vector(-15, 5, 0),
	pos = Vector(0, 0, 0)
}
