const DistributeToken = artifacts.require("./DistributeToken.sol");

module.exports = function(deployer) {

    deployer.deploy(DistributeToken)
     .then(() => {
         console.log('DistributeETH.address :' + DistributeETH.address);
     });

}
