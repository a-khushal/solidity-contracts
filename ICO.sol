// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./token.sol";

contract ICO is MyToken {
    function buy() public payable returns (bool) {
        uint amount = msg.value * 100;
        _transfer(owner(), _msgSender(), amount)
        return true;
    }

    function withdraw(uint256 amount) public onlyOwner() returns (bool) {
        require(amount <= address(this).balance, "Invalid inputs");
        payable(_msgSender()).transfer(amount);
        return true;
    }
}