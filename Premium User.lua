local id = {"2308948481"}

return {
    find = function(playerId)
        for _, premiumId in ipairs(id) do
            if tostring(playerId) == premiumId then
                return true
            end
        end
        return false
    end
}
