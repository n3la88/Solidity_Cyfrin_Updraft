// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //Stating the Solidity version 

contract SimpleStorage {
    // Basic types: boolean, uint (positive whole), int (positive or negative whole), string, adrress, bytes
   /* 
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88; //(uint256 == uint)
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0x0d8B53edAeae78620c676bD403c2be866F854181 ;
    bytes favoriteBytes32 = "cat";
    */

    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public{
       favoriteNumber = _favoriteNumber;
    }

    // view (does not modify state), pure () 
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
}

