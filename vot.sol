pragma solidity >= 0.7.0 <0.9.0;

contract Voting {
    mapping(address => bool) public hasVoted;
    uint256 public totalVotes;

    function vote() public {
        require(!hasVoted[msg.sender], "Already voted.");
        hasVoted[msg.sender] = true;
        totalVotes++;
    }

   
}
