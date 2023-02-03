// SPDX-Licence-Identifire: MIT
pragma solidity ^0.4.24;

contract Will {

    int amount;

    constructor() public{
        int total_bal=0;
    }
    uint256 public constant REWARD_RATE = 100;
    uint256 public s_totalSupply;
    uint256 public s_rewardPerTokenStored;
    uint256 public s_lastUpdateTime;
    function sendamount() public view returns(int){


    mapping(address => uint256) public s_balances;
        return amount;
    }

        function send(address account) public view returns (uint256) {
        uint256 currentBalance = s_balances[account];
        // how much they were paid already
        uint256 amountPaid = s_userRewardPerTokenPaid[account];
        uint256 currentRewardPerToken = rewardPerToken();
        uint256 pastRewards = s_rewards[account];
        uint256 _earned = ((currentBalance * (currentRewardPerToken - amountPaid)) / 1e18) +
            pastRewards;

        return _earned;
    }
function claimReward() external updateReward(msg.sender) {
        uint256 reward = s_rewards[msg.sender];
        bool success = s_rewardToken.transfer(msg.sender, reward);
        if (!success) {
            revert Staking__TransferFailed();
        }


const { ethers } = require("hardhat")

module.exports = async ({ getNamedAccounts, deployments }) => {
    const { deploy } = deployments
    const { deployer } = await getNamedAccounts()
    const rewardToken = await ethers.getContract("RewardToken")

    const stakingDeployment = await deploy("Staking", {
        from: deployer,
        args: [rewardToken.address, rewardToken.address],
        log: true,
    })
}

module.exports.tags = ["all", "staking"]




}