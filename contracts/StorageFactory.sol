// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol"; //Be specific on what contract you want to import

contract StorageFactory{

    // type visibility name
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public{
        simpleStorage = new SimpleStorage();
    }

}