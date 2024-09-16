// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {Script, console} from "forge-std/Script.sol";
import {OCKEarlyAdopter} from "../src/OCKEarlyAdopter.sol";

contract OCKEarlyAdopterScript is Script {
    /////////

    function setUp() public {}

    function run() public {
        bytes32 nacl = keccak256(abi.encodePacked(vm.envString("SALT")));
        
        vm.startBroadcast();
        new OCKEarlyAdopter{salt: nacl}();
        vm.stopBroadcast();
    }
}
