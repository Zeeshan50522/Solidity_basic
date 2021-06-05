// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyFirstContract{
    
    string private name;
    uint private age;
    
    function setName(string memory _name) public{
        name = _name;
    }
    
    function setAge(uint _age) public{
        age = _age;
    }
    
    function getName() external view returns(string memory){
        return name;
    }
    
    function getAge() external view returns(uint){
        return age;
    }
}