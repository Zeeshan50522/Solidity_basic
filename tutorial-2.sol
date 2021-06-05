// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


abstract contract  Regulator {
    function checkValue(uint _amount) internal virtual  view returns(bool);
    function loan() internal virtual view returns(bool);
}

contract Bank is Regulator{
    
    uint private amount; 
    
    constructor(uint _amount){
        amount = _amount;
    }
    
    
    function deposite(uint _amount) public {
        amount += _amount;
    }
    
    function withdraw(uint _amount) public {
        if (checkValue(_amount)){
            amount -= _amount;
        }
    }
    
   
    function checkValue(uint _amount) override internal view returns(bool){
        return _amount >= amount;
    }
    
    function loan() override internal virtual view returns(bool){
        return amount > 0;
    }
    
}

contract MyFirstContract is Bank(10) { 
    
    string private name;
    uint private age;
    
    function setName(string memory _name) public {
        name = _name;
    }
    
    function setAge(uint _age) public {
        age = _age;
    }
    
    function getName() external view returns(string memory){
        return name;
    }
    
    function getAge() external view returns(uint){
        return age;
    }
}