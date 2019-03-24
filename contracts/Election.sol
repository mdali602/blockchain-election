pragma solidity ^0.5.0;
// pragma solidity ^0.4.2;

contract Election {
  // string public candidate;

  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  // Store Candidate
  // Fetch Candidate
  mapping(uint => Candidate) public candidates;
  // Store Candidate Count
  uint public candidatesCount;

  constructor() public {
    // candidate = "Candidate 1";
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate (string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}