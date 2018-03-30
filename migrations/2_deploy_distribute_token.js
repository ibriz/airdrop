const DistributeETH = artifacts.require("./DistributeETH.sol");

module.exports = function(deployer) {

    deployer
        .deploy(DistributeETH)
        .then(() => {
            console.log('DistributeETH.address: ' + DistributeETH.address);
        });

}
