// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Test, console} from "../lib/forge-std/src/Test.sol";
import {FundMe} from "../src/FundMe.sol";



contract FundMeTest is Test {
    uint256 number = 1;
    function setUp() external {
        FundMe fundMe = new FundMe();
    }
    function testDemo() public {
        assertEq(number, 2);
    }
}