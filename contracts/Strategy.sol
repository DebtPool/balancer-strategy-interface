//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;

import "hardhat/console.sol";

import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";

struct StrategyParams {



}

interface BalancerManagedPoolControllerAPI {
      
    function updateWeightsGradually(
        uint256 startTime,
        uint256 endTime,
        uint256[] calldata endWeights
    ) external;

    function setSwapEnabled(bool swapEnabled) external;

    function addAllowedAddress(address member) external;

    function removeAllowedAddress(address member) external;

    function setMustAllowlistLPs(bool mustAllowlistLPs) external;

    function withdrawCollectedManagementFees(address recipient) external;

    function setManagementSwapFeePercentage(uint256 managementSwapFeePercentage) external;
    
}


/**
 * @title Balancer Controller Base Strategy
 * @author yearn.finance
 * @notice
 *  BaseStrategy implements all of the required functionality to interoperate
 *  closely with the Vault contract. This contract should be inherited and the
 *  abstract methods implemented to adapt the Strategy to the particular needs
 *  it has to create a return.
 *
 *  Of special interest is the relationship between `harvest()` and
 *  `vault.report()'. `harvest()` may be called simply because enough time has
 *  elapsed since the last report, and not because any funds need to be moved
 *  or positions adjusted. This is critical so that the Vault may maintain an
 *  accurate picture of the Strategy's performance. See  `vault.report()`,
 *  `harvest()`, and `harvestTrigger()` for further details.
 */

abstract contract BaseStrategy is BalancerController  {
    using SafeMath for uint256;
    
    // Balancer Composition Controller 
    BalancerManagedPoolControllerAPI public balancerController;



    

    function test2() public virtual view returns (uint256);

     /**
     * @notice This Strategy's name.
     * @dev
     *  You can use this field to manage the "version" of this Strategy, e.g.
     *  `StrategySomethingOrOtherV1`. However, "API Version" is managed by
     *  `apiVersion()` function above.
     * @return This Strategy's name.
     */
    function name() external view virtual returns (string memory);









}




contract Strategy is BaseStrategy {

    function test2() public override view returns (uint256) { return 1;}

}




