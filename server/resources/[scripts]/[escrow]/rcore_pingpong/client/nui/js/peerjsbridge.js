var pool = [];

window.addEventListener('message', (event) => {
    let data = event.data
    if (data.action == 'CreatePeer') {
        CreateNewPeer(data.peerInstanceId);
    }
    else if (data.action == 'ConnSend') {
        pool[data.connId].send(data.data);
    } else if (data.action == 'CreatePeerConn') {
        var connId = data.connId;
        var peerInstanceId = data.peerInstanceId;
        var peerConn = pool[data.peerInstanceId].connect(connId);
        peerConn.peerInstanceId = peerInstanceId;
        pool[connId] = peerConn;

        peerConn.on('data', function (data) {
            CallFivem({ action: "cData", peerInstanceId: peerInstanceId, connId: connId, data: data });
        });

        peerConn.on('open', function () {
            CallFivem({ action: "cOpen", peerInstanceId: peerInstanceId, connId: connId });
        });

        peerConn.on('close', function () {
            CallFivem({ action: "cClose", peerInstanceId: peerInstanceId, connId: connId });
        });

        peerConn.on('error', function (err) {
            CallFivem({ action: "cError", peerInstanceId: peerInstanceId, connId: connId, err: err });
        });
    } else if (data.action == 'ConnClose') {
        var connId = data.connId;
        pool[connId].close();
    }
    else if (data.action == 'PeerClose') {
        pool[data.peerInstanceId].disconnect()
    }
    else if (data.action == 'PeerDestroy') {
        pool[data.peerInstanceId].destroy()
    }
})

// creates a new PeerJS peer instance and sets up event listeners.
function CreateNewPeer(peerInstanceId) {
    var peer = new Peer();
    peer.peerInstanceId = peerInstanceId;
    pool[peerInstanceId] = peer;
    peer.on('open', function (id) {
        CallFivem({ action: "pOpen", peerInstanceId: peerInstanceId, id: id });
    });

    peer.on('connection', function (conn) {
        var connId = conn.peer;
        pool[connId] = conn;
        CallFivem({ action: "pConnection", peerInstanceId: peerInstanceId, connId: connId });
        conn.on('data', function (data) {
            CallFivem({ action: "cData", peerInstanceId: peerInstanceId, connId: connId, data: data });
        });

        conn.on('open', function () {
            CallFivem({ action: "cOpen", peerInstanceId: peerInstanceId, connId: connId });
        });

        conn.on('close', function () {
            CallFivem({ action: "cClose", peerInstanceId: peerInstanceId, connId: connId });
        });

        conn.on('error', function (err) {
            CallFivem({ action: "cError", peerInstanceId: peerInstanceId, connId: connId, err: err });
        });
    });

    peer.on('close', function () {
        CallFivem({ action: "pClose", peerInstanceId: peerInstanceId });
    });

    peer.on('disconnected', function () {
        CallFivem({ action: "pDisconnected", peerInstanceId: peerInstanceId });
    });

    peer.on('error', function (err) {
        CallFivem({ action: "pError", peerInstanceId: peerInstanceId, err: err });
    });
}

// sends data back to the client by making a POST request
function CallFivem(data) {
    fetch(`https://${GetParentResourceName()}/peerevent`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify(data)
    });
}