// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {LessonTwelveHelper} from "./12-LessonHelper.sol";

contract DeployHelperContract is Script {
    address deployerAddress;

    function run() external returns (LessonTwelveHelper) {
        deployerAddress = makeAddr("Toni");
        vm.startBroadcast(deployerAddress);
        LessonTwelveHelper helperContract = new LessonTwelveHelper();
        vm.stopBroadcast();
        console.log(helperContract.owner());
        return (helperContract);
    }
}
