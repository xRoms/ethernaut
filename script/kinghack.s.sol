// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/KingSolver.sol";

contract CounterScript is Script {

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        KingSolver solver = new KingSolver(0x7B53AACEa24751224Bfb4C372F773d9AE770bb29);
        uint256 value = 0;
        solver.setKing{value: 1100000000000000 wei}();
        bytes32 king = vm.load(0x7B53AACEa24751224Bfb4C372F773d9AE770bb29, bytes32(value));
        console.logBytes32(king);
        vm.stopBroadcast();

    }
}
