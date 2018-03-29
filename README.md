## AirDrop

### Project setup
Download project from github

Under airdrop directory
run `npm install`

### Testing via truffle console

Start Ganache

airdrop$ truffle migrate

airdrop$ truffle console

```
> var dt = var dt = DistributeETH.at(DistributeETH.address)

>dt.distribute([web3.eth.accounts[1],web3.eth.accounts[2]], '2000000000000000000', {value: '10000000000000000000', from: web3.eth.accounts[0]});

>web3.eth.getBalance(dt.address)

>web3.eth.getBalance(web3.eth.accounts[1])

>web3.fromWei(_.toString())
```


### To Deploy via Remix use truffle-flattener to generate the combined sol

airdrop> truffle-flattener contracts/DistributeETH.sol > flatten-DistributeETH.sol

Copy the content of flatten-DistributeETH.sol into remix ide and deploy DistributeETH
