// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {Test, console} from "forge-std/Test.sol";
import {OCKEarlyAdopter} from "../src/OCKEarlyAdopter.sol";

contract OCKEarlyAdopterTest is Test {
    /////////

    OCKEarlyAdopter public ock;

    function setUp() public {
        ock = new OCKEarlyAdopter();
    }

    function test_OCKEarlyAdopter() public view {
        assertEq(ock.name(), "OnchainKit Early Adopter");
        assertEq(ock.symbol(), "OCK");
        assertEq(ock.tokenURI(0), "data:application/json;base64,eyJuYW1lIjogIk9uY2hhaW5LaXQgRWFybHkgQWRvcHRlciIsICJkZXNjcmlwdGlvbiI6ICJPbmNoYWluS2l0IEVhcmx5IEFkb3B0ZXIiLCAiaW1hZ2UiOiAiaHR0cHM6Ly9ncmVlbi1hY2N1c2VkLWhlZGdlaG9nLTgwMy5teXBpbmF0YS5jbG91ZC9pcGZzL1FtUHlXVnhRYVo1d1VZYlRzUDIzUDVldUVUVXZLaENTVzNVVzdkZkVwNENWVEUiLCAiYXR0cmlidXRlcyI6IFt7InRyYWl0X3R5cGUiOiAiYmFzZWQiLCAidmFsdWUiOiAidHJ1ZSJ9XX0=");
    }
}
