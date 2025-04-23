stack:
    go run main.go cook opstack --external-builder http://host.docker.internal:4444

run:
    /home/denis/.playground/op-reth-v1.3.4 node --authrpc.addr 0.0.0.0 --authrpc.port 4444 --authrpc.jwtsecret ./output/jwtsecret --chain ./output/l2-genesis.json --datadir /tmp/builder --disable-discovery --port 30333 --trusted-peers enode://3479db4d9217fb5d7a8ed4d61ac36e120b05d36c2eefb795dc42ff2e971f251a2315f5649ea1833271e020b9adc98d5db9973c7ed92d6b2f1f2223088c3d852f@127.0.0.1:30304 --rollup.sequencer-http http://localhost:8549

artifacts:
    go run main.go artifacts op-reth

clean:
    sudo rm -rf ~/.playground/devnet
