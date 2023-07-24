// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NftExample is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("ExampleNFT", "ENFT") {
    }

     function mint(string memory tokenURI) public payable returns (uint) {
         require(msg.value >= 100000000000000, "the minimum amount is 1 ETH");
         _tokenIds.increment();
         uint256 newItemId = _tokenIds.current();

         _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

         return newItemId;
     }
}
