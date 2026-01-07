# Uniae (Built for Base)

Uniae is a powerful, read-only tool designed to help developers inspect and validate the Base Sepolia network. It provides an easy and efficient way to check wallet balances, validate contract deployments, and inspect network details—all while ensuring that no transactions are made on the blockchain.

---

## Key Features

Uniae offers the following capabilities:
- **Network Connectivity Check**: Verify that you're connected to the correct network (Base Sepolia, chainId: 84532)  
- **Wallet Balance Inspection**: Quickly check your wallet balance and transaction details  
- **Contract Validation**: Validate deployed contracts on Base Sepolia with verified explorer links  
- **Network Data Review**: Inspect recent block information, gas usage, and other network stats  

Everything is done in read-only mode, ensuring no changes to the blockchain.

---

## Repository Structure

- **app/uniae.ts**  
  Main script that connects to Coinbase Wallet and retrieves data from Base Sepolia.

- **contracts/**  
  Solidity contracts deployed on Base Sepolia for testnet validation:
  - `BaseCharityFund.sol` - a charity donation contract that allows users to donate Ether to a specific cause.
  - `BaseAuction.sol`  - a simple auction contract where users can place bids for an item

- **docs/**  
  Documentation for understanding how to use Uniae:
  - `usage.md`  
  - `testnet-verification.md`  

- **logs/**  
  Logs generated during network checks and testnet validation:
  - `execution.log`  
  - `debug.log`  

- **package.json**  
  Dependency management for the project.

- **README.md**  
  This documentation file.

---

## Supported Networks

Base Sepolia  
chainId (decimal): 84532  
Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

---

## How It Works

Uniae connects to Coinbase Wallet using the Coinbase Wallet SDK and communicates with Base Sepolia using the viem library. It retrieves wallet balances, contract data, block details, and gas price information, while providing explorers for easy validation.

No transactions are signed or broadcasted on the network, ensuring everything remains read-only.

---

## License

MIT License  
Copyright (c) 2025 YOUR_NAME

---

## Author

GitHub: [tern-mottoes](https://github.com/tern-mottoes)  

Email: tern.mottoes-0e@icloud.com 

Twitter (x): https://x.com/meztizshur111

---

## Testnet Deployment (Base Sepolia)

The following contracts have been deployed on Base Sepolia for validation and testing:

Network: Base Sepolia  
chainId (decimal): 84532  
Explorer: [sepolia.basescan.org](https://sepolia.basescan.org)

Contract BaseCharityFund.sol address:  
0xB5C6F4A9D2E1F7A8C9B3E2F0A7D5F8C3A6D4E2F9

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0xB5C6F4A9D2E1F7A8C9B3E2F0A7D5F8C3A6D4E2F9)
- [Code Verification](https://sepolia.basescan.org/0xB5C6F4A9D2E1F7A8C9B3E2F0A7D5F8C3A6D4E2F9/0#code)

Contract BaseAuction.sol address:  
0xF8D3E2C7B5A9F2E8C6A1D4B7A6C3D9F5C4B2F1E0

Deployment and verification:
- [Deployment Link](https://sepolia.basescan.org/address/0xF8D3E2C7B5A9F2E8C6A1D4B7A6C3D9F5C4B2F1E0)
- [Code Verification](https://sepolia.basescan.org/0xF8D3E2C7B5A9F2E8C6A1D4B7A6C3D9F5C4B2F1E0/0#code)

These contracts help validate the Base Sepolia network and tools before Mainnet deployment.
