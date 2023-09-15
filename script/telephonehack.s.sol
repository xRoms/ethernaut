// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/TelephoneSolver.sol";

contract CounterScript is Script {
    TelephoneSolver solver; 

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        solver = new TelephoneSolver(0x257B07499762321942d188D44fEc0238E5f0A874);
        solver.passPhone();
        vm.stopBroadcast();

    }
}
