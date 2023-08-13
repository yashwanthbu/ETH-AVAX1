//1.SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract handlers{
    string s;
    uint256 public c1=70;
    address owner;

    constructor (){
        owner=msg.sender;
        s="No errors found";
    }
    
    function check_owner()public view returns(string memory){
        require(msg.sender==owner,"Only owner can add");
        return s;
    }
    function sum_equal(uint a1,uint b1)public view returns(string memory){
        if((a1+b1)!=(c1+10)){
            revert("Sum of a1 and b1 should be equal to 10 more than c1");
        }
        return s;
    }
    function condition()public view returns(string memory){
        assert(c1>100);
        return s;
    }
}
