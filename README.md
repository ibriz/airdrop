## AirDrop

### Project setup
Download project from github

Under airdrop directory
run `npm install`

### Testing via truffle console

Start Ganache

airdrop$ `truffle migrate`

airdrop$ `truffle console`

```
> var dt = DistributeETH.at(DistributeETH.address)

> dt.distribute([web3.eth.accounts[1],web3.eth.accounts[2]], web3.toWei('2'), {value: web3.toWei('10'), from: web3.eth.accounts[0]});

> web3.eth.getBalance(dt.address)

> web3.eth.getBalance(web3.eth.accounts[1])

> web3.fromWei(_.toString())
```


### To Deploy via Remix use truffle-flattener to generate the combined sol

airdrop$ `truffle-flattener contracts/DistributeETH.sol > flatten-DistributeETH.sol`

Copy the content of flatten-DistributeETH.sol into remix ide and deploy DistributeETH
