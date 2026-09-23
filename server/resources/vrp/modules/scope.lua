-----------------------------------------------------------------------------------------------------------------------------------------
-- SCOPE & ROUTING BUCKETS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Gerenciamento de instanciamento e routing buckets para OneSync
-----------------------------------------------------------------------------------------------------------------------------------------
Scope = {}
vRP = vRP or {}

function vRP.GetRoutingBucket(source)
	return GetPlayerRoutingBucket(source)
end

function vRP.SetRoutingBucket(source, Bucket)
	Player(source).state.Route = Bucket
	SetPlayerRoutingBucket(source, Bucket)
end
