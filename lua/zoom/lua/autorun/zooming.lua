AddCSLuaFile()
if (CLIENT) then
    concommand.Add("zoom2", function(ply)
        local fov = ply:GetFOV()
        if fov >= 67 then ply:SetFOV(100, .2) return end
        local newfov = ply:GetFOV() + (ply:GetFOV() / 2)
        ply:SetFOV(newfov, .2)
    end)

    concommand.Add("zoom1", function(ply)
        local fov = ply:GetFOV()
        if fov <= 5 then return end
        local newfov = ply:GetFOV() - (ply:GetFOV() / 4)
        ply:SetFOV(newfov, .2)
    end)
end