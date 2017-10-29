pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ForGoodCharityTest1 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ForGoodCharityTest1(address _owner)  UpgradeableToken(_owner) {
    name = "ForGoodCharityTest1";
    symbol = "FGCT1";
    totalSupply = 40000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}