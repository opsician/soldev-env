FROM rust:latest
# Update Ubuntu Software repository
RUN apt update

RUN apt install -y curl

RUN sh -c "$(curl -sSfL https://release.solana.com/v1.9.2/install)"
ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"

RUN apt-get install -y nodejs npm libudev-dev

RUN mkdir /sol

RUN solana config set --url https://api.devnet.solana.com

RUN npm install --global yarn

USER root