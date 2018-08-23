pragma solidity ^0.4.2;
import "./SafeMath.sol";

contract Election {
	using SafeMath for uint256;
	// Model a candidate
	// Store candidates
	// Fetch candidate
	// Store candidates count
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	mapping(uint => Candidate) public candidates;
	// generate a candidates function for us that allows us to fetch the candidate from this mapping
	// by changing the state of mapping, we will be changing the contract, interacting w blockchain

	uint public candidatesCount;
	// in solidity, there is no way to determine size of mapping, so no iterator


	function Election () public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string _name) private {
		candidatesCount = candidatesCount.add(1);

		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
		/*
		candidates[candidatesCount].name = _name;
		candidates[candidatesCount].id = candidatesCount;
		candidates[candidatesCount].voteCount = 0;
		*/
	}

}