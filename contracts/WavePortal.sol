// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    uint256 waveCounter;
    address [] public waverAddresses;

    constructor() {
        console.log("ETH Contract Compiled");
    }

    function wave() public { 
        totalWaves += 1;
        waveCounter += 1;
        waverAddresses.push(msg.sender);
        //look up %s shortcut
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        //look up %d shortcut
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getChads() public view returns ( address [] memory) {
        return waverAddresses;
    }
}
