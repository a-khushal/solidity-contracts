// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./token.sol";


contract MyToken is ERC20, Ownable {
    constructor(uint256 _initialSupply) ERC20("MyToken", "MTK") Ownable(_msgSender()) {
        _mint(_msgSender(), _initialSupply);
    }

    function mintTo(address _to, uint256 _amount) public onlyOwner {
        require(_to != address(0) && amount != uint256(0), "Invalid inputs fro ERC20");
        _mint(_to, _amount);
    }

    function burn(address account, uint256 amount) public onlyOwner {
        _burn(address, amount);
    }
}