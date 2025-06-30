// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperTeste is Test {
    Flipper public flipper;

    function setUp() public {
        flipper = new Flipper();
    }

    function test_getValue() public view {
        assertEq(flipper.getValue(), true);
    }

    function test_flipValue() public {
        flipper.flip();
        assertEq(flipper.getValue(), false);
    }
}
