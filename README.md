# Solana Development Environment

## Getting Started

```
docker-compose build
docker-compose up
docker exec -it sc-tool bash
solana config set --url https://api.devnet.solana.com
solana-keygen new --force
solana airdrop 2
cd /sol/[YOUR_PROJECT]
cargo-build-bpf
solana program deploy [YOUR_COMPILED_SMART_CONTRACT]
```