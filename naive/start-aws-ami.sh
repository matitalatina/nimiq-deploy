# Variables
DOMAIN="<DOMAIN>"
WALLET_SEED="<WALLET_SEED>"
PORT=8585
MINER_THREADS=4

sudo yum update -y
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs git build-essential python2.7 make gcc gcc-c++
mkdir -p keys/$DOMAIN
cd !$
cat <<EOF > privkey.pem
<PRIVATE_KEY_CONTENT>
EOF
cat <<EOF > certkey.pem
<CERT_KEY_CONTENT>
EOF
sudo chmod 400 *.pem
cd ~
#git clone -b release https://github.com/nimiq-network/core
git clone https://github.com/nimiq-network/core
cd ~/core/
npm install
#npm run build
cd ~/core/clients/nodejs/
node index.js --host $DOMAIN --port $PORT --key ~/keys/$DOMAIN/privkey.pem --cert ~/keys/$DOMAIN/certkey.pem --statistics=10 --miner=$MINER_THREADS --wallet-seed=$WALLET_SEED