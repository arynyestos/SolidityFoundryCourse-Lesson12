// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {LessonTwelveHelper} from "./12-LessonHelper.sol";
import {DeployHelperContract} from "./DeployHelperContract.s.sol";

contract ChallengeFuzzTests is Test {
    LessonTwelveHelper hellContract;
    DeployHelperContract deployer;
    address deployerAddress = makeAddr("Toni");

    function setUp() external {
        deployer = new DeployHelperContract();
        hellContract = deployer.run();
        targetContract(address(hellContract));
    }

    function testSolvesChallenge(uint128 numberr) public {
        vm.prank(deployerAddress);
        hellContract.hellFunc(numberr);
    }
}
