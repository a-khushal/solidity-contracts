// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract MyToken is ERC20 {
    constructor(uint256 _initialSupply) ERC20("MyToken", "MTK") {
        _mint(msg.sender, _initialSupply);
    }

    function mintTo(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }
}