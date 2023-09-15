// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.12;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/ReentranceSolver.sol";
import "../src/Reentrance.sol";

contract CounterScript is Script {

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        // Reentrance instance = Reentrance(0x1669A984EB94dbcf19806A8A24Da82d990d57867);
        // ReentranceSolver solver = new ReentranceSolver(0x1669A984EB94dbcf19806A8A24Da82d990d57867);
        // solver.solve{value: 500000000000000 wei}();

        uint256 balance = address(0x1669A984EB94dbcf19806A8A24Da82d990d57867).balance;
        console.logUint(balance);
        vm.stopBroadcast();

    }
}
