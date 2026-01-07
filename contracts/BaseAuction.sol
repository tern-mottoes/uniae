// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseAuction {
    address public owner;
    uint256 public minimumBid;
    uint256 public highestBid;
    address public highestBidder;
    bool public auctionEnded;

    event BidPlaced(address indexed bidder, uint256 amount);
    event AuctionEnded(address indexed winner, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    modifier auctionNotEnded() {
        require(!auctionEnded, "Auction already ended");
        _;
    }

    modifier auctionEndedOnly() {
        require(auctionEnded, "Auction is still active");
        _;
    }

    constructor(uint256 _minimumBid) {
        owner = msg.sender;
        minimumBid = _minimumBid;
        auctionEnded = false;
    }

    function placeBid() external payable auctionNotEnded {
        require(msg.value > highestBid && msg.value >= minimumBid, "Bid must be higher than current bid");
        
        if (highestBid != 0) {
            payable(highestBidder).transfer(highestBid); // Refund the previous highest bidder
        }

        highestBid = msg.value;
        highestBidder = msg.sender;

        emit BidPlaced(msg.sender, msg.value);
    }

    function endAuction() external onlyOwner auctionNotEnded {
        auctionEnded = true;
        payable(owner).transfer(highestBid); // Send the highest bid to the owner

        emit AuctionEnded(highestBidder, highestBid);
    }

    function getHighestBid() external view returns (uint256) {
        return highestBid;
    }

    function getHighestBidder() external view returns (address) {
        return highestBidder;
    }
}
