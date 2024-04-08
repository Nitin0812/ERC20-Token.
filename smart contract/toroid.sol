// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^4.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract Toroidnetwork is ERC20, Ownable, ERC20Burnable, Pausable {
    constructor(address initialOwner) ERC20("Toroidnetwork", "TORD") Ownable(initialOwner) {
    _mint(initialOwner, 5000000000000000000000000000); // 5 quadrillion tokens with 18 decimals
}


    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}