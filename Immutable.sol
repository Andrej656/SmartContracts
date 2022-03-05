//SPDX-License-Identifier: GPU 3.0
pragma solidity^0.8.0;

//45718 gas
//address public owner = msg.sender;
//43585 gas

contract Immutable {
    address public  owner = msg.sender;

    constructor() {
        owner = msg.sender;
    }

    uint public x;
    function foo() external {
        require (msg.sender == owner);
        x += 1;
    }
}
