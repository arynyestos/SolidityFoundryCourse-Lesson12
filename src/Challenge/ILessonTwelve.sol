// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

interface ILessonTwelve {
    function solveChallenge(address exploitContract, string memory yourTwitterHandle) external;
    function getHellContract() external view returns (address);
}
