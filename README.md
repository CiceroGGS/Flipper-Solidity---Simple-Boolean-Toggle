## Foundry

**Foundry é um kit de ferramentas extremamente rápido, portátil e modular para o desenvolvimento de aplicações Ethereum escrito em Rust.

O Foundry é composto por:

- **Forge**: Estrutura de teste Ethereum (como Truffle, Hardhat e DappTools).
- **Cast**: Canivete suíço para interagir com contratos inteligentes EVM, enviar transacções e obter dados da cadeia.
- **Anvil**: Nó Ethereum local, semelhante ao Ganache, Hardhat Network.
- **chisel**: REPL de solidity rápido, utilitário e verboso.

Traduzido com a versão gratuita do tradutor - DeepL.com

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
# Flipper-Solidity---Simple-Boolean-Toggle
