ITEM = class.Create("base_weapon")

ITEM.Name 			= "M1911"
ITEM.Description 	= "Semi-automatic pistol chambered in .45 ACP"

ITEM.Model 			= Model("models/tnb/weapons/w_1911.mdl")

ITEM.Weight 		= 1

ITEM.IconFOV 		= 2.00
ITEM.CamOffset 		= Vector(2.50, -1.00, 0.00)

ITEM.Slots 			= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.Weapon 		= "trp_1911"
ITEM.ScrapItem 		= "parts_pistol"