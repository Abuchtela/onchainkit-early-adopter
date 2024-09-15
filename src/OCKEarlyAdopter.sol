// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {ERC721} from "openzeppelin-contracts/token/ERC721/ERC721.sol";

contract OCKEarlyAdopter is ERC721 {
    constructor() ERC721("OnchainKit Early Adopter", "OCK") {}

    function tokenURI(uint256 /*id*/) public view virtual override returns (string memory json) {
        json = "https://example.com/token/";
    }
}
