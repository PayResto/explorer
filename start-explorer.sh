NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="134.209.233.169" PORT="4200" node "/home/bridgechain/core-explorer/build/build.js" --network "$NETWORK"
EXPLORER_HOST="134.209.233.169" EXPLORER_PORT="4200" pm2 start /home/bridgechain/core-explorer/express-server.js --name explorer
