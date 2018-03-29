pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/math/SafeMath.sol";




contract DistributeETH {
    using SafeMath for uint256;

    function distribute(address[] recipients, uint sendValue) public payable {
        require(msg.value >= sendValue.mul(recipients.length));
        for(uint i = 0; i < recipients.length; i++) {
            recipients[i].transfer(sendValue);
        }
        returnRemainder();
    }

    function returnRemainder() internal {
        address contractAddress = this;
        if(contractAddress.balance > 0) {
            msg.sender.transfer(contractAddress.balance);
        }
    }
}
