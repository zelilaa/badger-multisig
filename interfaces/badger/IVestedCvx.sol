// SPDX-License-Identifier: MIT
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity ^0.6.0;
pragma experimental ABIEncoderV2;

interface IVestedCvx {
    event Harvest(uint256 harvested, uint256 indexed blockNumber);
    event Paused(address account);
    event PerformanceFeeGovernance(
        address indexed destination,
        address indexed token,
        uint256 amount,
        uint256 indexed blockNumber,
        uint256 timestamp
    );
    event PerformanceFeeStrategist(
        address indexed destination,
        address indexed token,
        uint256 amount,
        uint256 indexed blockNumber,
        uint256 timestamp
    );
    event RewardsCollected(address token, uint256 amount);
    event SetController(address controller);
    event SetGovernance(address governance);
    event SetPerformanceFeeGovernance(uint256 performanceFeeGovernance);
    event SetPerformanceFeeStrategist(uint256 performanceFeeStrategist);
    event SetStrategist(address strategist);
    event SetWithdrawalFee(uint256 withdrawalFee);
    event Tend(uint256 tended);
    event TreeDistribution(
        address indexed token,
        uint256 amount,
        uint256 indexed blockNumber,
        uint256 timestamp
    );
    event Unpaused(address account);
    event Withdraw(uint256 amount);
    event WithdrawAll(uint256 balance);
    event WithdrawOther(address token, uint256 amount);

    function BADGER() external view returns (address);

    function BADGER_TREE() external view returns (address);

    function BRIBES_RECEIVER() external view returns (address);

    function CVXCRV_VAULT() external view returns (address);

    function CVX_EXTRA_REWARDS() external view returns (address);

    function DELEGATE() external view returns (address);

    function DELEGATED_SPACE() external view returns (bytes32);

    function LOCKER() external view returns (address);

    function MAX_BPS() external view returns (uint256);

    function MAX_FEE() external view returns (uint256);

    function SNAPSHOT() external view returns (address);

    function VOTIUM_BRIBE_CLAIMER() external view returns (address);

    function __BaseStrategy_init(
        address _governance,
        address _strategist,
        address _controller,
        address _keeper,
        address _guardian
    ) external;

    function balanceOf() external view returns (uint256);

    function balanceOfPool() external view returns (uint256);

    function balanceOfWant() external view returns (uint256);

    function baseStrategyVersion() external view returns (string memory);

    function checkUpkeep(bytes calldata checkData)
        external
        view
        returns (bool upkeepNeeded, bytes memory performData);

    function claimBribeFromConvex(address convexAddress, address token)
        external;

    function claimBribeFromVotium(
        address votiumTree,
        address token,
        uint256 index,
        address account,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external;

    function claimBribesFromConvex(
        address convexAddress,
        address[] calldata tokens
    ) external;

    function claimBribesFromVotium(
        address votiumTree,
        address account,
        address[] calldata tokens,
        uint256[] calldata indexes,
        uint256[] calldata amounts,
        bytes32[][] calldata merkleProofs
    ) external;

    function controller() external view returns (address);

    function deposit() external;

    function getBoostPayment() external view returns (uint256);

    function getName() external pure returns (string memory);

    function getProtectedTokens() external view returns (address[] memory);

    function governance() external view returns (address);

    function guardian() external view returns (address);

    function harvest() external returns (uint256);

    function harvestOnRebalance() external view returns (bool);

    function initialize(
        address _governance,
        address _strategist,
        address _controller,
        address _keeper,
        address _guardian,
        address[3] calldata _wantConfig,
        uint256[3] calldata _feeConfig
    ) external;

    function isTendable() external view returns (bool);

    function keeper() external view returns (address);

    function lpComponent() external view returns (address);

    function manualProcessExpiredLocks() external;

    function manualRebalance(uint256 toLock) external;

    function manualSendCVXToVault() external;

    function manualSetDelegate(address delegate) external;

    function pause() external;

    function paused() external view returns (bool);

    function performUpkeep(bytes calldata performData) external;

    function performanceFeeGovernance() external view returns (uint256);

    function performanceFeeStrategist() external view returns (uint256);

    function prepareWithdrawAll() external;

    function processLocksOnRebalance() external view returns (bool);

    function processLocksOnReinvest() external view returns (bool);

    function reinvest() external returns (uint256);

    function reward() external view returns (address);

    function setController(address _controller) external;

    function setGovernance(address _governance) external;

    function setGuardian(address _guardian) external;

    function setHarvestOnRebalance(bool newHarvestOnRebalance) external;

    function setKeeper(address _keeper) external;

    function setPerformanceFeeGovernance(uint256 _performanceFeeGovernance)
        external;

    function setPerformanceFeeStrategist(uint256 _performanceFeeStrategist)
        external;

    function setProcessLocksOnRebalance(bool newProcessLocksOnRebalance)
        external;

    function setProcessLocksOnReinvest(bool newProcessLocksOnReinvest) external;

    function setStrategist(address _strategist) external;

    function setWithdrawalFee(uint256 _withdrawalFee) external;

    function setWithdrawalMaxDeviationThreshold(uint256 _threshold) external;

    function setWithdrawalSafetyCheck(bool newWithdrawalSafetyCheck) external;

    function skim() external;

    function strategist() external view returns (address);

    function sweepRewardToken(address token) external;

    function sweepRewards(address[] calldata tokens) external;

    function tend() external;

    function uniswap() external view returns (address);

    function unpause() external;

    function version() external pure returns (string memory);

    function want() external view returns (address);

    function withdraw(uint256 _amount) external;

    function withdrawAll() external returns (uint256 balance);

    function withdrawOther(address _asset) external returns (uint256 balance);

    function withdrawalFee() external view returns (uint256);

    function withdrawalMaxDeviationThreshold() external view returns (uint256);

    function withdrawalSafetyCheck() external view returns (bool);
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"harvested","type":"uint256"},{"indexed":true,"internalType":"uint256","name":"blockNumber","type":"uint256"}],"name":"Harvest","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Paused","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"destination","type":"address"},{"indexed":true,"internalType":"address","name":"token","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"},{"indexed":true,"internalType":"uint256","name":"blockNumber","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"timestamp","type":"uint256"}],"name":"PerformanceFeeGovernance","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"destination","type":"address"},{"indexed":true,"internalType":"address","name":"token","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"},{"indexed":true,"internalType":"uint256","name":"blockNumber","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"timestamp","type":"uint256"}],"name":"PerformanceFeeStrategist","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"token","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"RewardsCollected","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"controller","type":"address"}],"name":"SetController","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"governance","type":"address"}],"name":"SetGovernance","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"performanceFeeGovernance","type":"uint256"}],"name":"SetPerformanceFeeGovernance","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"performanceFeeStrategist","type":"uint256"}],"name":"SetPerformanceFeeStrategist","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"strategist","type":"address"}],"name":"SetStrategist","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"withdrawalFee","type":"uint256"}],"name":"SetWithdrawalFee","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"tended","type":"uint256"}],"name":"Tend","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"internalType":"address","name":"token","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"},{"indexed":true,"internalType":"uint256","name":"blockNumber","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"timestamp","type":"uint256"}],"name":"TreeDistribution","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"Unpaused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"Withdraw","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"balance","type":"uint256"}],"name":"WithdrawAll","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"token","type":"address"},{"indexed":false,"internalType":"uint256","name":"amount","type":"uint256"}],"name":"WithdrawOther","type":"event"},{"inputs":[],"name":"BADGER","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"BADGER_TREE","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"BRIBES_RECEIVER","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"CVXCRV_VAULT","outputs":[{"internalType":"contract ISettV4","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"CVX_EXTRA_REWARDS","outputs":[{"internalType":"contract ICVXBribes","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"DELEGATE","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"DELEGATED_SPACE","outputs":[{"internalType":"bytes32","name":"","type":"bytes32"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"LOCKER","outputs":[{"internalType":"contract ICvxLocker","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"MAX_BPS","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"MAX_FEE","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"SNAPSHOT","outputs":[{"internalType":"contract IDelegateRegistry","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"VOTIUM_BRIBE_CLAIMER","outputs":[{"internalType":"contract IVotiumBribes","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_governance","type":"address"},{"internalType":"address","name":"_strategist","type":"address"},{"internalType":"address","name":"_controller","type":"address"},{"internalType":"address","name":"_keeper","type":"address"},{"internalType":"address","name":"_guardian","type":"address"}],"name":"__BaseStrategy_init","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"balanceOf","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"balanceOfPool","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"balanceOfWant","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"baseStrategyVersion","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"checkData","type":"bytes"}],"name":"checkUpkeep","outputs":[{"internalType":"bool","name":"upkeepNeeded","type":"bool"},{"internalType":"bytes","name":"performData","type":"bytes"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"contract ICVXBribes","name":"convexAddress","type":"address"},{"internalType":"address","name":"token","type":"address"}],"name":"claimBribeFromConvex","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract IVotiumBribes","name":"votiumTree","type":"address"},{"internalType":"address","name":"token","type":"address"},{"internalType":"uint256","name":"index","type":"uint256"},{"internalType":"address","name":"account","type":"address"},{"internalType":"uint256","name":"amount","type":"uint256"},{"internalType":"bytes32[]","name":"merkleProof","type":"bytes32[]"}],"name":"claimBribeFromVotium","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract ICVXBribes","name":"convexAddress","type":"address"},{"internalType":"address[]","name":"tokens","type":"address[]"}],"name":"claimBribesFromConvex","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract IVotiumBribes","name":"votiumTree","type":"address"},{"internalType":"address","name":"account","type":"address"},{"internalType":"address[]","name":"tokens","type":"address[]"},{"internalType":"uint256[]","name":"indexes","type":"uint256[]"},{"internalType":"uint256[]","name":"amounts","type":"uint256[]"},{"internalType":"bytes32[][]","name":"merkleProofs","type":"bytes32[][]"}],"name":"claimBribesFromVotium","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"controller","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"deposit","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"getBoostPayment","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getName","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"},{"inputs":[],"name":"getProtectedTokens","outputs":[{"internalType":"address[]","name":"","type":"address[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"governance","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"guardian","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"harvest","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"harvestOnRebalance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_governance","type":"address"},{"internalType":"address","name":"_strategist","type":"address"},{"internalType":"address","name":"_controller","type":"address"},{"internalType":"address","name":"_keeper","type":"address"},{"internalType":"address","name":"_guardian","type":"address"},{"internalType":"address[3]","name":"_wantConfig","type":"address[3]"},{"internalType":"uint256[3]","name":"_feeConfig","type":"uint256[3]"}],"name":"initialize","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"isTendable","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"keeper","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"lpComponent","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"manualProcessExpiredLocks","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"toLock","type":"uint256"}],"name":"manualRebalance","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"manualSendCVXToVault","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"delegate","type":"address"}],"name":"manualSetDelegate","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"pause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"paused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"bytes","name":"performData","type":"bytes"}],"name":"performUpkeep","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"performanceFeeGovernance","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"performanceFeeStrategist","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"prepareWithdrawAll","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"processLocksOnRebalance","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"processLocksOnReinvest","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"reinvest","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"reward","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"_controller","type":"address"}],"name":"setController","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_governance","type":"address"}],"name":"setGovernance","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_guardian","type":"address"}],"name":"setGuardian","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"newHarvestOnRebalance","type":"bool"}],"name":"setHarvestOnRebalance","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_keeper","type":"address"}],"name":"setKeeper","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_performanceFeeGovernance","type":"uint256"}],"name":"setPerformanceFeeGovernance","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_performanceFeeStrategist","type":"uint256"}],"name":"setPerformanceFeeStrategist","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"newProcessLocksOnRebalance","type":"bool"}],"name":"setProcessLocksOnRebalance","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"newProcessLocksOnReinvest","type":"bool"}],"name":"setProcessLocksOnReinvest","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_strategist","type":"address"}],"name":"setStrategist","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_withdrawalFee","type":"uint256"}],"name":"setWithdrawalFee","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"_threshold","type":"uint256"}],"name":"setWithdrawalMaxDeviationThreshold","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"newWithdrawalSafetyCheck","type":"bool"}],"name":"setWithdrawalSafetyCheck","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"skim","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"strategist","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"token","type":"address"}],"name":"sweepRewardToken","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address[]","name":"tokens","type":"address[]"}],"name":"sweepRewards","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"tend","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"uniswap","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"unpause","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"version","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"pure","type":"function"},{"inputs":[],"name":"want","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"_amount","type":"uint256"}],"name":"withdraw","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"withdrawAll","outputs":[{"internalType":"uint256","name":"balance","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"_asset","type":"address"}],"name":"withdrawOther","outputs":[{"internalType":"uint256","name":"balance","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"withdrawalFee","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"withdrawalMaxDeviationThreshold","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"withdrawalSafetyCheck","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"}]
*/
