//SPDX-License-Identifier:MIT
pragma solidity ^0.8.8 .0;

contract Student {
    struct studentInfo {
        string name;
        uint age;
        string country;
        bool isAlegalStudent;
    }

    mapping(uint => studentInfo) public studentId;

    function studentInformation(
        uint _Id,
        string memory _name,
        uint _age,
        string memory _country,
        bool _isAlegalStudent
    ) public {
        studentInfo storage stud = studentId[_Id];
        stud.name = _name;
        stud.age = _age;
        stud.country = _country;
        stud.isAlegalStudent = _isAlegalStudent;
    }
}
