AddCSLuaFile()

ENT.Base 				= "cc_base_ent"

ENT.Model 				= Model("models/weapons/w_missile_launch.mdl")

ENT.Velocity 			= 3000

ENT.UseGravity 			= false
ENT.GravityMultiplier 	= 0.3

if SERVER then
	function ENT:Initialize()
		self:SetModel(self.Model)

		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_NONE)
		self:SetSolid(SOLID_VPHYSICS)

		self.Vel = self:GetForward() * self.Velocity
		self.LastThink = CurTime()

		self.Hit = false

		local phys = self:GetPhysicsObject()

		if IsValid(phys) then
			phys:SetVelocity(self.Vel)
			phys:Wake()
		end

		self:CustomInit()
	end

	function ENT:CustomInit()
	end

	function ENT:CustomThink()
	end

	function ENT:Think()
		local grav = self.UseGravity and physenv.GetGravity() * self.GravityMultiplier or Vector()
		local delta = CurTime() - self.LastThink

		self.Vel = self.Vel + (grav * delta)

		self:CustomThink()

		local pos = self:GetPos() + self.Vel * delta

		local tr = util.TraceLine({
			start = self:GetPos(),
			endpos = pos,
			filter = {self:GetOwner()}
		})

		if not util.IsInWorld(pos) or (tr.Hit and tr.Entity:GetClass() != self:GetClass()) then
			self:OnHit(tr)

			timer.Simple(0, function()
				self:Remove()
			end)

			return
		end

		self:SetPos(pos)
		self:SetAngles(self.Vel:Angle())

		self.LastThink = CurTime()
		self:NextThink(CurTime())

		return true
	end

	function ENT:OnHit(data)
	end
end