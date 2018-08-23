pragma solidity ^0.4.2;

contract Election {
	// set up a smoke Test to ensure we set up contract correctly
	// 1. Make sure it can be deployed
	// 2. Make sure it responds to the things it's supposed to respond to
	
	// Constructor -- needs to be declared public because it will be run when deployed to blockchain
	// Store candidate
	// Read candidate

	string public candidate;
	// By declaring public, this state variable is given a Getter() function for free

	function Election () public {
		candidate = "Candidate 1";
	}
}