local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L0_1.IgnoreErrorsAndDisconnects = false
PeerJS = L0_1
L0_1 = {}
L1_1 = 0
L2_1 = PeerJS
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2
  L6_2 = L1_1
  L6_2 = L6_2 + 1
  L1_1 = L6_2
  L6_2 = {}
  L7_2 = L1_1
  L6_2.peerInstanceId = L7_2
  L6_2.onOpen = A1_2
  L6_2.onConnection = A2_2
  L6_2.onClose = A3_2
  L6_2.onDisconnected = A4_2
  L6_2.OnError = A5_2
  L7_2 = {}
  L6_2.connections = L7_2
  L6_2.useFivem = A0_2
  function L7_2(A0_3, A1_3, A2_3, A3_3, A4_3)
    local L5_3, L6_3, L7_3, L8_3, L9_3
    if not A0_3 then
      L5_3 = nil
      return L5_3
    end
    L5_3 = {}
    L6_3 = L6_2.peerInstanceId
    L5_3.peerInstanceId = L6_3
    L5_3.connId = A0_3
    L5_3.onOpen = A1_3
    L5_3.onClose = A2_3
    L5_3.OnError = A3_3
    L5_3.onData = A4_3
    L6_3 = L6_2.useFivem
    L5_3.useFivem = L6_3
    L6_3 = AppendConnFunctions
    L7_3 = L5_3
    L6_3(L7_3)
    L6_3 = L6_2.connections
    L6_3[A0_3] = L5_3
    L6_3 = L0_1
    L6_3[A0_3] = L5_3
    L6_3 = A0_2
    if L6_3 then
      L6_3 = TriggerServerEvent
      L7_3 = "TableTennis:ConnectToPeer"
      L8_3 = L6_2.peerInstanceId
      L9_3 = A0_3
      L6_3(L7_3, L8_3, L9_3)
    else
      L6_3 = SendNUIMessage
      L7_3 = {}
      L7_3.action = "CreatePeerConn"
      L8_3 = L5_3.peerInstanceId
      L7_3.peerInstanceId = L8_3
      L8_3 = L5_3.connId
      L7_3.connId = L8_3
      L6_3(L7_3)
    end
    return L5_3
  end
  L6_2.Connect = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "TableTennis:CloseLocalPeer"
      L0_3(L1_3)
    else
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "PeerClose"
      L2_3 = L1_1
      L1_3.peerInstanceId = L2_3
      L0_3(L1_3)
    end
  end
  L6_2.Close = L7_2
  function L7_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    if L0_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "TableTennis:CloseLocalPeer"
      L0_3(L1_3)
    else
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "PeerDestroy"
      L2_3 = L1_1
      L1_3.peerInstanceId = L2_3
      L0_3(L1_3)
    end
  end
  L6_2.Destroy = L7_2
  L8_2 = L1_1
  L7_2 = L0_1
  L7_2[L8_2] = L6_2
  if A0_2 then
    L7_2 = TriggerServerEvent
    L8_2 = "TableTennis:CreateLocalPeer"
    L9_2 = L1_1
    L7_2(L8_2, L9_2)
  else
    L7_2 = SendNUIMessage
    L8_2 = {}
    L8_2.action = "CreatePeer"
    L9_2 = L1_1
    L8_2.peerInstanceId = L9_2
    L7_2(L8_2)
  end
  return L6_2
end
L2_1.CreatePeer = L3_1
L2_1 = PeerJS
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2.onOpen = A1_2
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2.onClose = A2_2
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2.OnError = A3_2
  L5_2 = L0_1
  L5_2 = L5_2[A0_2]
  L5_2.onData = A4_2
end
L2_1.AssignConnectionEvents = L3_1
function L2_1(A0_2)
  local L1_2
  function L1_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = PeerJS
    L1_3 = L1_3.SimulateLag
    if L1_3 then
      L1_3 = PeerJS
      L1_3 = L1_3.SimulateLag
      if L1_3 > 0 then
        L1_3 = CreateThread
        function L2_3()
          local L0_4, L1_4, L2_4
          L0_4 = Wait
          L1_4 = PeerJS
          L1_4 = L1_4.SimulateLag
          L0_4(L1_4)
          L0_4 = SendNUIMessage
          L1_4 = {}
          L1_4.action = "ConnSend"
          L2_4 = A0_2.peerInstanceId
          L1_4.peerInstanceId = L2_4
          L2_4 = A0_2.connId
          L1_4.connId = L2_4
          L2_4 = A0_3
          L1_4.data = L2_4
          L0_4(L1_4)
        end
        L3_3 = "AppendConnFunctions"
        L1_3(L2_3, L3_3)
    end
    else
      L1_3 = A0_2.useFivem
      if L1_3 then
        L1_3 = TriggerServerEvent
        L2_3 = "TableTennis:PeerSendToOp"
        L3_3 = A0_2.peerInstanceId
        L4_3 = A0_3
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = SendNUIMessage
        L2_3 = {}
        L2_3.action = "ConnSend"
        L3_3 = A0_2.peerInstanceId
        L2_3.peerInstanceId = L3_3
        L3_3 = A0_2.connId
        L2_3.connId = L3_3
        L2_3.data = A0_3
        L1_3(L2_3)
      end
    end
  end
  A0_2.Send = L1_2
  function L1_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2.useFivem
    if L0_3 then
      L0_3 = TriggerServerEvent
      L1_3 = "TableTennis:PeerDisconnectOp"
      L2_3 = A0_2.peerInstanceId
      L0_3(L1_3, L2_3)
    else
      L0_3 = SendNUIMessage
      L1_3 = {}
      L1_3.action = "ConnClose"
      L2_3 = A0_2.peerInstanceId
      L1_3.peerInstanceId = L2_3
      L2_3 = A0_2.connId
      L1_3.connId = L2_3
      L0_3(L1_3)
    end
  end
  A0_2.Close = L1_2
end
AppendConnFunctions = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 then
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
  end
  L2_2 = A0_2.action
  if "pOpen" == L2_2 then
    L3_2 = A0_2.peerInstanceId
    L2_2 = L0_1
    L2_2 = L2_2[L3_2]
    L3_2 = A0_2.id
    L2_2.id = L3_2
    L3_2 = A0_2.peerInstanceId
    L2_2 = L0_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.onOpen
    if L2_2 then
      L3_2 = A0_2.peerInstanceId
      L2_2 = L0_1
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.onOpen
      L3_2 = A0_2.id
      L2_2(L3_2)
    end
  else
    L2_2 = A0_2.action
    if "pClose" == L2_2 then
      L2_2 = PeerJS
      L2_2 = L2_2.IgnoreErrorsAndDisconnects
      if not L2_2 then
        L3_2 = A0_2.peerInstanceId
        L2_2 = L0_1
        L2_2 = L2_2[L3_2]
        L2_2 = L2_2.onClose
        if L2_2 then
          L3_2 = A0_2.peerInstanceId
          L2_2 = L0_1
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.onClose
          L2_2()
        end
    end
    else
      L2_2 = A0_2.action
      if "pDisconnected" == L2_2 then
        L2_2 = PeerJS
        L2_2 = L2_2.IgnoreErrorsAndDisconnects
        if not L2_2 then
          L3_2 = A0_2.peerInstanceId
          L2_2 = L0_1
          L2_2 = L2_2[L3_2]
          L2_2 = L2_2.onDisconnected
          if L2_2 then
            L3_2 = A0_2.peerInstanceId
            L2_2 = L0_1
            L2_2 = L2_2[L3_2]
            L2_2 = L2_2.onDisconnected
            L2_2()
          end
      end
      else
        L2_2 = A0_2.action
        if "pError" == L2_2 then
          L2_2 = PeerJS
          L2_2 = L2_2.IgnoreErrorsAndDisconnects
          if not L2_2 then
            L3_2 = A0_2.peerInstanceId
            L2_2 = L0_1
            L2_2 = L2_2[L3_2]
            L2_2 = L2_2.OnError
            if L2_2 then
              L3_2 = A0_2.peerInstanceId
              L2_2 = L0_1
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.OnError
              L3_2 = A0_2.err
              L2_2(L3_2)
            end
        end
        else
          L2_2 = A0_2.action
          if "pConnection" == L2_2 then
            L2_2 = A0_2.connId
            L3_2 = {}
            L4_2 = A0_2.peerInstanceId
            L3_2.peerInstanceId = L4_2
            L4_2 = A0_2.connId
            L3_2.connId = L4_2
            L5_2 = A0_2.peerInstanceId
            L4_2 = L0_1
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.useFivem
            L3_2.useFivem = L4_2
            L4_2 = AppendConnFunctions
            L5_2 = L3_2
            L4_2(L5_2)
            L4_2 = L0_1
            L4_2[L2_2] = L3_2
            L5_2 = A0_2.peerInstanceId
            L4_2 = L0_1
            L4_2 = L4_2[L5_2]
            L4_2 = L4_2.onConnection
            if L4_2 then
              L5_2 = A0_2.peerInstanceId
              L4_2 = L0_1
              L4_2 = L4_2[L5_2]
              L4_2 = L4_2.onConnection
              L5_2 = L3_2
              L4_2(L5_2)
            end
          else
            L2_2 = A0_2.action
            if "cOpen" == L2_2 then
              L3_2 = A0_2.connId
              L2_2 = L0_1
              L2_2 = L2_2[L3_2]
              L2_2 = L2_2.onOpen
              if L2_2 then
                L3_2 = A0_2.connId
                L2_2 = L0_1
                L2_2 = L2_2[L3_2]
                L2_2 = L2_2.onOpen
                L2_2()
              end
            else
              L2_2 = A0_2.action
              if "cClose" == L2_2 then
                L2_2 = PeerJS
                L2_2 = L2_2.IgnoreErrorsAndDisconnects
                if not L2_2 then
                  L3_2 = A0_2.connId
                  L2_2 = L0_1
                  L2_2 = L2_2[L3_2]
                  L2_2 = L2_2.onClose
                  if L2_2 then
                    L3_2 = A0_2.connId
                    L2_2 = L0_1
                    L2_2 = L2_2[L3_2]
                    L2_2 = L2_2.onClose
                    L2_2()
                  end
              end
              else
                L2_2 = A0_2.action
                if "cError" == L2_2 then
                  L2_2 = PeerJS
                  L2_2 = L2_2.IgnoreErrorsAndDisconnects
                  if not L2_2 then
                    L3_2 = A0_2.connId
                    L2_2 = L0_1
                    L2_2 = L2_2[L3_2]
                    L2_2 = L2_2.OnError
                    if L2_2 then
                      L3_2 = A0_2.connId
                      L2_2 = L0_1
                      L2_2 = L2_2[L3_2]
                      L2_2 = L2_2.OnError
                      L3_2 = A0_2.err
                      L2_2(L3_2)
                    end
                end
                else
                  L2_2 = A0_2.action
                  if "cData" == L2_2 then
                    L3_2 = A0_2.connId
                    L2_2 = L0_1
                    L2_2 = L2_2[L3_2]
                    L2_2 = L2_2.onData
                    if L2_2 then
                      L2_2 = PeerJS
                      L2_2 = L2_2.SimulateLag
                      if L2_2 then
                        L2_2 = PeerJS
                        L2_2 = L2_2.SimulateLag
                        if L2_2 > 0 then
                          L2_2 = CreateThread
                          function L3_2()
                            local L0_3, L1_3
                            L0_3 = Wait
                            L1_3 = PeerJS
                            L1_3 = L1_3.SimulateLag
                            L0_3(L1_3)
                            L1_3 = A0_2.connId
                            L0_3 = L0_1
                            L0_3 = L0_3[L1_3]
                            L0_3 = L0_3.onData
                            L1_3 = A0_2.data
                            L0_3(L1_3)
                          end
                          L4_2 = "handleCallbackEvents"
                          L2_2(L3_2, L4_2)
                      end
                      else
                        L3_2 = A0_2.connId
                        L2_2 = L0_1
                        L2_2 = L2_2[L3_2]
                        L2_2 = L2_2.onData
                        L3_2 = A0_2.data
                        L2_2(L3_2)
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L3_1 = RegisterNUICallback
L4_1 = "peerevent"
L5_1 = L2_1
L3_1(L4_1, L5_1)
L3_1 = exports
L4_1 = "GetObject"
function L5_1()
  local L0_2, L1_2
  L0_2 = PeerJS
  return L0_2
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNetEvent
L4_1 = "TableTennis:PeerEvent"
L3_1(L4_1)
L3_1 = AddEventHandler
L4_1 = "TableTennis:PeerEvent"
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
