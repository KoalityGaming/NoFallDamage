
hook.Add( "Initialize", "NoFallDamage_Override", function()

	-- The GetFallDamage hook does not get called until around 600 speed, which is a
	-- rather high drop already. Hence we do our own fall damage handling in
	-- OnPlayerHitGround.
	function GAMEMODE:GetFallDamage(ply, speed)
	   return 0
	end

	function GAMEMODE:OnPlayerHitGround(ply, in_water, on_floater, speed)
	   --Dont do anything
	end
end)