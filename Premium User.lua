local premiumIds = {"2308948481"}
local bannedUsers = {
    ["1013253"] = "Why?"
}

return {
    find = function(playerId)
        for _, premiumId in ipairs(premiumIds) do
            if tostring(playerId) == premiumId then
                return "premium"
            end
        end

        for bannedId, reason in pairs(bannedUsers) do
            if tostring(playerId) == bannedId then
                return reason
            end
        end
        
        return "ban"
    end
}
