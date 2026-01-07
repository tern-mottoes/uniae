// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseCharityFund {
    address public owner;
    uint256 public totalDonations;

    event DonationReceived(address indexed donor, uint256 amount);
    event FundsWithdrawn(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function donate() external payable {
        require(msg.value > 0, "Donation must be greater than zero");
        totalDonations += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    function withdrawFunds(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance");
        payable(owner).transfer(amount);
        emit FundsWithdrawn(owner, amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
