// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Base64.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract OnChainNFT is ERC721 {
    using Strings for uint256;

    uint256 private _tokenIdCounter;

    constructor() ERC721("MayLordNFT", "MLNFT") {}

    function mint() public {
        _tokenIdCounter++;
        _safeMint(msg.sender, _tokenIdCounter);
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        require(_exists(tokenId), "Token does not exist");

        string memory name = string(abi.encodePacked("MayLordNFT #", tokenId.toString()));
        string memory description = "This is an on-chain NFT with metadata stored entirely on the blockchain.";
        string memory image = generateBase64Image();

        string memory json = string(
            abi.encodePacked(
                '{"name":"', name, '",',
                '"description":"', description, '",',
                '"image":"', image, '"}'
            )
        );

        return string(abi.encodePacked("data:application/json;base64,", Base64.encode(bytes(json))));
    }

    function generateBase64Image() internal pure returns (string memory) {
        string memory svg = '<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200" viewBox="0 0 200 200"><rect width="200" height="200" fill="#4CAF50"/><text x="50%" y="50%" dominant-baseline="middle" text-anchor="middle" fill="white" font-size="24">OnChainNFT</text></svg>';
        return string(abi.encodePacked("data:image/svg+xml;base64,", Base64.encode(bytes(svg))));
    }
}
