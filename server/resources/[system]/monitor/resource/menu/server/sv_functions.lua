-- =============================================
--  txAdmin Resource: sv_functions.lua
-- =============================================

function CheckMenuPerm(src, perm)
    if not IsAdmin(src) then
        txPrintError(("Player %d attempted to run %s without admin permission."):format(src, tostring(perm)))
        return false
    end
    return true
end
