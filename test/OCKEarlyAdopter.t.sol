// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {Test, console} from "forge-std/Test.sol";
import {OCKEarlyAdopter} from "../src/OCKEarlyAdopter.sol";

contract OCKEarlyAdopterTest is Test {
    OCKEarlyAdopter public ock;

    function setUp() public {
        ock = new OCKEarlyAdopter();
    }

    function test_OCKEarlyAdopter() public view {
        assertEq(ock.name(), "OnchainKit Early Adopter");
        assertEq(ock.symbol(), "OCK");
    }
}
