// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {OCKEarlyAdopter} from "../src/OCKEarlyAdopter.sol";

contract OCKEarlyAdopterScript is Script {
    OCKEarlyAdopter public ock;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        ock = new OCKEarlyAdopter();

        vm.stopBroadcast();
    }
}
