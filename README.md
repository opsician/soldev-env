solana config set --url https://api.devnet.solana.com

solana-keygen new --force

solana airdrop 2

cd /sol/example-helloworld

cargo-build-bpf --manifest-path=./src/program-rust/Cargo.toml --bpf-out-dir=./dist/program

solana program deploy /sol/example-helloworld/./dist/program/helloworld.so

# get public key of contract

npm install
./node_modules/.bin/ts-node src/client/main.ts