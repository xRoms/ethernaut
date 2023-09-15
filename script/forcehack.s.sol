// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/ForceSolver.sol";

contract CounterScript is Script {
    ForceSolver solver; 

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        solver = new ForceSolver(0x1f18b178eF820116BC9b01F632516d4B6C7768E4);
        solver.solve{value: 1 wei}();
        vm.stopBroadcast();

    }
}
