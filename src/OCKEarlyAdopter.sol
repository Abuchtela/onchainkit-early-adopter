// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {ERC721} from "openzeppelin-contracts/token/ERC721/ERC721.sol";
import {LibBase64} from "./LibBase64.sol";

/////////////////////////////////////////////////////////////////////
//     _______            __          __       ___ ___ __ __       //
//    |   _   .-----.----|  |--.---.-|__.-----|   Y   |__|  |_     //
//    |.  |   |     |  __|     |  _  |  |     |.  1  /|  |   _|    //
//    |.  |   |__|__|____|__|__|___._|__|__|__|.  _  \|__|____|    //
//    |:  1   |                               |:  |   \            //
//    |::.. . |                               |::.| .  )           //
//    `-------'                               `--- ---'            //
/////////////////////////////////////////////////////////////////////

/// @title OnchainKit Early Adopter
/// @author neodaoist
/// @notice A token for based early adopters of OnchainKit
contract OCKEarlyAdopter is ERC721 {
    /////////

    ///////// Private State

    uint256 private _tokenIdCounter;

    ///////// Construction

    constructor() ERC721("OnchainKit Early Adopter", "OCK") {}

    ///////// Views

    /// @inheritdoc ERC721
    function tokenURI(uint256 /*id*/ ) public pure override returns (string memory json) {
        json = string(
            abi.encodePacked(
                "data:application/json;base64,",
                LibBase64.encode(
                    bytes(
                        string(
                            abi.encodePacked(
                                '{"name": "OnchainKit Early Adopter", "description": "OnchainKit Early Adopter", "image": "https://green-accused-hedgehog-803.mypinata.cloud/ipfs/QmPyWVxQaZ5wUYbTsP23P5euETUvKhCSW3UW7dfEp4CVTE", "attributes": [{"trait_type": "based", "value": "true"}]}'
                            )
                        )
                    )
                )
            )
        );
    }

    ///////// Actions

    /// @notice Mint a token to an address (permissionlessly)
    /// @param to The address to mint to
    function mint(address to) public {
        uint256 tokenId = _tokenIdCounter;
        _tokenIdCounter++;
        _safeMint(to, tokenId);
    }
}
