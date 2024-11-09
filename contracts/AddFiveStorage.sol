// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import{SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    
    function sayHello() public pure returns (string memory){
        return "Hello";
    }

    //overrides
    function store(uint256 _newNumber) public override{
        myFavoriteNumber = _newNumber + 5;
    }

}