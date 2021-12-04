// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Inbox {
    string public name;
    address public owner;
    uint public rentalRate;
    uint public noEquipment = 0;

    struct Equipment{
        uint id;
        bool paid;
        address equipmentUser;
        uint expiryOf;
    }
    mapping(uint256 => Equipment) public equipments;
    mapping(address => uint256) public balanceOf;
    constructor(string memory initialMessage) {
        name = initialMessage;
        owner = msg.sender;
        rentalRate = 50000000000000000 wei; // (0.05eth)
    }
    
    // function setMessage(string memory newMessage) public {
    //     message = newMessage;
    // }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function addEquipment() public{
        noEquipment++;
        equipments[noEquipment] = Equipment(
            noEquipment,
            false,
            address(0x0),
            0
        );
    }

    function rent(uint id) payable external{
        require(msg.value == rentalRate);
        //checks if equipment exists
        require(equipments[id].id != 0);
        if(equipments[id].expiryOf<=block.timestamp)
        {
            equipments[id].paid = false;
        }
        require(equipments[id].paid == false);
        balanceOf[owner] += msg.value;
        equipments[id].equipmentUser = msg.sender;
        equipments[id].expiryOf = block.timestamp + 1800;
        equipments[id].paid = true;

    }

    function setRentalRate(uint rate)public onlyOwner{
        rentalRate = rate;
    }

    function inUse(uint id) public view returns (bool) { 
        require(equipments[id].id != 0);
        bool temp = false;
        if(equipments[id].expiryOf>=block.timestamp)
        {
            temp = true;
        }
        return temp;
    }

    function withdraw(uint amount) public onlyOwner{
        require(balanceOf[msg.sender] >= amount);
        balanceOf[msg.sender] -= amount;
        payable(owner).transfer(amount);
    }

    function time() public view returns (uint) { 
        return block.timestamp;
    }

}