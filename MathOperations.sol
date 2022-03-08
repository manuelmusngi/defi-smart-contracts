// SPDX-License-Identifier: AGPL-3.0-or-later
// File: openzeppelin-solidity/contracts/math/SafeMath.sol

pragma solidity ^0.8.12;

/*
 * Arithmetic operations in Solidity wrap on overflow
 */

// Using this library instead of the unchecked operations eliminates an entire
// class of bugs, so it's recommended to use it always.

library SafeMath {
    // Addition of two unsigned integers
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    // Subtraction of two unsigned integers
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    // Subtraction of two unsigned integers with custom message on
    // overflow (when the result is negative).
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    // Multiplication of two unsigned integers.
     
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    // Division of two unsigned integers
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    // Division of two unsigned integers 
     
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        // Solidity only automatically asserts when dividing by 0
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    // Remainder of dividing two unsigned integers. (unsigned integer modulo)
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    // Remainder of dividing two unsigned integers with error message (unsigned integer modulo)
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}