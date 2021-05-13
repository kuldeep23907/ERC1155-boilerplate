// SPDX-License-Identifier: agpl-3.0

pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/token/ERC20/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0/contracts/utils/ReentrancyGuard.sol";

contract Disperser is ReentrancyGuard {
  
    using SafeMath for uint256;
    using SafeERC20 for ERC20;
    using Address for address payable;
    
    function disperseToken(address token, address[] memory recipients, uint256  amtToken, uint256 amtBnb) external nonReentrant {
        
        uint256 len = recipients.length;
        
        for (uint256 i = 0; i < len; i++) {
            
            address payable to = payable(recipients[i]);
            ERC20(token).safeTransferFrom(msg.sender, to, amtToken);  
            to.transfer(amtBnb);
        }
    }
}