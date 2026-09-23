-- =============================================
--  txAdmin Resource: sv_resources.lua
-- =============================================

function GetAllResourcesList()
    local resources = {}
    local numResources = GetNumResources()
    for i = 0, numResources - 1 do
        local resName = GetResourceByFindIndex(i)
        if resName then
            resources[#resources + 1] = {
                name = resName,
                status = GetResourceState(resName)
            }
        end
    end
    return resources
end
