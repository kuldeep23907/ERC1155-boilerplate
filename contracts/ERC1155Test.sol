pragma solidity ^0.7.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract ERC1155Test is ERC1155 {
    uint256 public tokenCount;
    
    constructor() public ERC1155("") {
        tokenCount = 0;
    }
    
    function addNewToken(uint256 initialSupply) public {
        _mint(msg.sender, tokenCount, initialSupply, "");
        tokenCount = tokenCount + 1;        
    }

}
