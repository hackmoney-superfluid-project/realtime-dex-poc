#!/bin/bash

# to run tests: 1) run this script 2) in a separate terminal, run "npx hardhat --network localhost test"

# fDAIx address to unlock
export testWalletAddress=0x888D08001F91D0eEc2f16364779697462A9A713D
export testWalletAddress2=0xFc25b7BE2945Dd578799D15EC5834Baf34BA28e1

# gets all vars from .env
set -o allexport
source .env
set +o allexport

# to test on another chain, just swap the api key
ganache-cli \
--fork $ALCHEMY_KEY \
--unlock $testWalletAddress \
--unlock $testWalletAddress2 \
--networkId 999