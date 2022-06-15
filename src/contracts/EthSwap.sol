pragma solidity >=0.4.21 <0.6.0;

import "./Token.sol";

contract EthSwap {
    string public name = "EthSwap Instance Exchange";
    Token public token;
    uint public rate = 100; // 1 ether  = 100 DApp

    constructor(Token _token) public {
        token = _token;
    }

    function buytokens() {
        // redemption rate = no. of tokens they receive for 1 ether
        // Amount of ethereum * redemptiom rate
        // CAlculate of number of tokens to buy
        uint tokenAmount = msg.value * rate;
        tokes.transfer(msg.sender, tokenAmount);
    }
}
