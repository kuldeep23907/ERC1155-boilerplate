const path = require("path");
var HDWalletProvider = require("@truffle/hdwallet-provider");

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  contracts_build_directory: path.join(__dirname, "client/src/contracts"),
  networks: {
    develop: {
      port: 8545
    },
    kovan: {
      provider: new HDWalletProvider(
        "abuse culture whale flight narrow panther garage sail crime snack custom you",
        "https://kovan.infura.io/v3/612186dedb554a44913d772552c02617"
      ),
      network_id: 42,
      // networkCheckTimeout: 10
      gas: 4500000,
      gasPrice: 10000000000,
    },
  },
  testnet: {
      provider: () => new HDWalletProvider(
       "mnemoic here",
       `https://data-seed-prebsc-2-s1.binance.org:8545/`),
      network_id: 97,
      // confirmations: 10,
      // gasPrice:10000000000,
      timeoutBlocks: 200,
      skipDryRun: true
    },
    bsc: {
      provider: () => new HDWalletProvider(
       "mnemoic here",
       `https://bsc-dataseed.binance.org/`),
      network_id: 56,
      gasPrice:10000000000,
      // confirmations: 10,
      timeoutBlocks: 200,
      skipDryRun: true
    },
  compilers: {
    solc: {
      version: "^0.7.0", // A version or constraint - Ex. "^0.5.0"
    }
  }
};
