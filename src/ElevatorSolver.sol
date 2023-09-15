// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../std/Elevator.sol";

contract ElevatorSolver {
  bool public value = true;

  function isLastFloor(uint _floor) public returns (bool) {
    value = !value;
    return value;
  }
}