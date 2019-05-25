pragma solidity 0.5.8;
contract main{
    address public owner;
    constructor () public{
        owner = msg.sender;  
    }
    modifier onlyowner(){
        require(msg.sender == owner );
        _;
    }
}

contract child is main{
    uint public counter;
    function addcount() public onlyowner{
        counter++;
    }
}