// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;


abstract contract Reentrance  {
  
  function donate(address _to) public virtual payable;

  function balanceOf(address _who) public virtual view returns (uint balance);

  function withdraw(uint _amount) public virtual;

  receive() external virtual payable;
}