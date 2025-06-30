// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperScript is Script {
    Flipper flipper;

    function setUp() public {}

    function run() public {
        // address da carteira -> 0x70997970C51812dc3A010C7d01b50e0d17dc79C8 \\
        // primary key ->  0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d \\
        // my address -> 0x948B3c65b89DF0B4894ABE91E6D02FE579834F8F \\
        vm.startBroadcast(
            0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d
        );

        flipper = new Flipper();
        console.log("ADDRESS: ", address(flipper));
        console.log(flipper.getValue());
        flipper.flip();
        console.log(flipper.getValue());

        vm.stopBroadcast();
    }
}

// cast call --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --rpc-url "127.0.0.1:8545" "0x948B3c65b89DF0B4894ABE91E6D02FE579834F8F" "getValue()(bool)"

// cast call --private-key 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d --rpc-url "127.0.0.1:8545" "0x948B3c65b89DF0B4894ABE91E6D02FE579834F8F" "flip()()"
