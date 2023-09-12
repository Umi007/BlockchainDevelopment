// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


library PriceConverter {

    function getPrice() internal view returns(uint256) {

        // Address - 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI - AggregatorV3Interface

        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 answer,,,) = priceFeed.latestRoundData();
        // Price of ETH in terms of USD
        // 0000.00000000 (Found out using decimals function in aggregator)
        return uint256(answer * 1e10);
        // Have to match answer(the price) to msg.value, which is in Wei. therefore x10 to get 18 decimal places

    }

    function getConversionRate(uint256 ethAmount) internal view returns(uint256) {

       uint256 ethPrice = getPrice();
       uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
       // 1.000000000000000000 * 1.000000000000000000 = 1.00000000000000000000000000000000000 (too long!)
       return ethAmountInUsd;

   }

    function getVersion() internal view returns(uint256) {

        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();

    }

}