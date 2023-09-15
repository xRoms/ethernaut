// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/FlipSolver.sol";

contract CounterScript is Script {
    FlipSolver solver; 
    function setUp() public {
        address instanceAddress = 0x650B5A0bE199C36c0668C9DEC1f9c5FDaAe5b197;
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        // vm.startBroadcast(deployerPrivateKey);
        solver = FlipSolver(0x9af1CA45a1060E597655EDa81679c6ca48f26555);
        // vm.stopBroadcast();
    }

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        solver.doFlip();
        vm.stopBroadcast();

    }
}
