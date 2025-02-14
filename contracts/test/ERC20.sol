pragma solidity =0.5.16;

import '../AnimalERC20.sol';

contract ERC20 is AnimalERC20 {
    constructor(uint _totalSupply) public {
        _mint(msg.sender, _totalSupply);
    }
}
