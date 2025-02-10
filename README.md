# OnChainNFT Project

This project implements an on-chain NFT using Solidity, Hardhat, and OpenZeppelin. The NFT metadata, including an SVG image, is stored entirely on the blockchain.

## Features
- **On-Chain Metadata**: The NFT metadata is stored on-chain, including the SVG image.
- **Minting Functionality**: Users can mint new NFTs.
- **ERC-721 Standard**: The contract is based on OpenZeppelin's ERC-721 implementation.
- **Hardhat Deployment**: The project uses Hardhat for contract compilation, testing, and deployment.
- **Base Sepolia Testnet**: The contract is deployed on the Base Sepolia testnet.
- **Etherscan Verification**: Configured for contract verification on BaseScan.
- **Automated Deployment & Minting**: Deployment, minting, and verification are handled in a single Ignition script.

## Prerequisites
Before running the project, ensure you have the following installed:
- Node.js (>=16.x)
- Hardhat
- Alchemy or Infura API key
- Base Sepolia testnet account with funds

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/7maylord/OnchainNFT
   cd OnChainNFT
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Create a `.env` file and configure it:
   ```sh
   ALCHEMY_BASE_SEPOLIA_API_KEY_URL=<your-alchemy-url>
   ACCOUNT_PRIVATE_KEY=<your-wallet-private-key>
   BASESCAN_API_KEY=<your-basescan-api-key>
   ```

## Compilation
Compile the smart contracts:
```sh
npx hardhat compile
```

## Deployment, Minting & Verification
Deployment, minting, and contract verification are handled automatically by the Hardhat Ignition module:
```sh
npx hardhat ignition deploy ignition/modules/OnChainNFT.ts --network base_sepolia --verify
```

## Testing
Run tests using Hardhat:
```sh
npx hardhat test
```

## License
This project is licensed under the MIT License.

## Author
Developed by **[MayLord](https://github.com/7maylord)**. Feel free to contribute and improve the project!

---

Happy coding! 🚀