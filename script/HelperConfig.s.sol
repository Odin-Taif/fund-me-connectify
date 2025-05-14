// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

//1.deploy mocks when we are on a local network
//2. keep track of contrcact address for future tests
// speplia
// mainner

contract HelperConfig {
    // if we on a local network, we deploy mocks
    // if we are on a testnet, we use the existing address
    // if we are on mainnet, we use the existing address
    NetworkConfig public activeNetworkConfig;

    constructor() {
        if (block.chainid == 11155111) {
            activeNetworkConfig = getSepoliaEthConfig();
        } else if (block.chainid == 31337) {
            activeNetworkConfig = getAnvilEthConfig();
        } else {
            revert("No active network config found");
        }
    }

    struct NetworkConfig {
        address ethUsdPriceFeed;
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
        NetworkConfig memory sepoliaConfig = NetworkConfig({
            ethUsdPriceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaConfig;
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory) {
        NetworkConfig memory anvilConfig = NetworkConfig({
            ethUsdPriceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return anvilConfig;
    }
}
