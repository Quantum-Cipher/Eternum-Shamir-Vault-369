// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "forge-std/Test.sol";
import "../src/shamir/EternumShamir.sol";

contract EternumShamirTest is Test {
    EternumShamir vault;

    function setUp() public {
        vault = new EternumShamir(3, 5);
    }

    function testConstructor() public view {
        assertEq(vault.threshold(), 3);
        assertEq(vault.totalShares(), 5);
    }
}
