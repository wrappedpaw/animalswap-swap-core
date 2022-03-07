const AnimalFactory = artifacts.require("AnimalFactory");
const { getNetworkConfig } = require('../migration-config');

module.exports = async function (deployer, network, accounts) {
  const { feeToSetterAddress } = getNetworkConfig(network, accounts);
  await deployer.deploy(AnimalFactory, feeToSetterAddress);

  const animalFactory = await AnimalFactory.deployed();
  console.log(`INIT_CODE_PAIR_HASH: ${await animalFactory.INIT_CODE_PAIR_HASH()}`)

};
