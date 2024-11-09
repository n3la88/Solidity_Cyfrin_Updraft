// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol"; //Be specific on what contract you want to import

contract StorageFactory{

    // type visibility name
    SimpleStorage[] public listSimpleStorageContracts;

    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //Address
        //ABI - Application Binary Interface
        SimpleStorage mySimpleStorage = listSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
        
        //another option
        //listSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
        
        //another option
        //return listSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

}