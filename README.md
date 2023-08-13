# ETH-AVAX1

This project is a starting point for beginners in understanding the implementation of error handlers which are shown using three different functions respectively.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. In this contract we have declared three functions in which three error handlers namely- require, revert and assert are shown and in the walkthrough video i have shown the working of each error handler in each function. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., error.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to more than "0.8.4" (or another compatible version), and then click on the "Compile error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "error" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with the mint and burn functions to add or remove tokens from the balance of that account address respectively.

## Authors

Yashwanth BU
[@yashwanthbuu@gmail.com](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
