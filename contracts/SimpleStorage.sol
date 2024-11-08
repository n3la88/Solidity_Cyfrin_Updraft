// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //Stating the Solidity version 

contract SimpleStorage {
    // Basic types: boolean, uint (positive whole), int (positive or negative whole), string, adrress, bytes
   /* 
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88; //(uint256 == uint)
    string favoriteNumberInText = "eighty-eight"; //string = array of bytes
    int256 favoriteInt = -88;
    address myAddress = 0x0d8B53edAeae78620c676bD403c2be866F854181 ;
    bytes favosriteBytes32 = "cat";
    */

    uint256 myFavoriteNumber;
    
    //uint256[] listFavoriteNumbers; //[0,33,46]

    struct Person{
        uint256 favoriteNumber;
        string name;
        bool isCool;
    }
    //Person public pat = Person({favoriteNumber:7, name:"Pat", isCool:true});
    //Person public mariah = Person({favoriteNumber:5, name:"mariah", isCool:true});
    
    //static array
    //Person[3] public listPeople;

    //dymanic array
    Person[] public listPeople;

    //Mapping
    mapping(string =>Person) public nameToFavoriteNumber;

    //calldata (temporary variable cannot be modified), memory (temporary variable can be modified) and storage
    function addPerson(string memory _name, uint256 _favoriteNumber, bool _isCool) public {
        Person memory newPerson = Person(_favoriteNumber, _name, _isCool);
        listPeople.push(newPerson);

       //Another option
       //listPeople.push( Person(_favoriteNumber, _name, _isCool) );

       nameToFavoriteNumber[_name] = newPerson;
    }

    function store(uint256 _favoriteNumber) public{
       myFavoriteNumber = _favoriteNumber;
    }

    // view (does not modify state), pure () 
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }


}

contract SimpleStorage1{}
contract SimpleStorage2{}
contract SimpleStorage3{}

