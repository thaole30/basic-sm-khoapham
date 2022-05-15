pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        //view: ng dùng k cần trả phí, ng dùng chỉ lấy đc dứ liệu
        //payable: ng dùng cần trả phí

        return adopters;
    }
}

