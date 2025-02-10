// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const OnChainNFTModule = buildModule("OnChainNFTModule", (m) => {
  // Get the deployer's address (using m.getAccount)
  const ownerAddress = m.getAccount(0);

  // Deploy the OnChainNFT contract
  const nft = m.contract("OnChainNFT");

  // After deploying the contract, mint the NFT to the deployer's address
  m.call(
    nft,                  // Contract instance
    "mint",               // Function name
    [],                   // No arguments for the mint function
    { from: ownerAddress } // Optional call options (e.g., from which address to call)
  );

  return { nft };
});

export default OnChainNFTModule;

