# OnchainKit Early Adopter

## Table of Contents
- [Introduction](#introduction)
- [Setup](#setup)
- [Usage](#usage)
- [Testing](#testing)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Introduction

OnchainKit Early Adopter is a project that provides a token for early adopters of OnchainKit. The main features of this project include minting tokens and retrieving metadata.

## Setup

1. Clone the repository:
    ```shell
    git clone https://github.com/Abuchtela/onchainkit-early-adopter.git
    cd onchainkit-early-adopter
    ```

2. Install dependencies:
    ```shell
    forge install
    ```

3. Create a `.env` file based on the `.env.template` file:
    ```shell
    cp .env.template .env
    ```

4. Update the `.env` file with your own values.

## Usage

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Anvil

```shell
anvil
```

### Deploy

```shell
forge script script/OCKEarlyAdopter.s.sol:OCKEarlyAdopterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
cast <subcommand>
```

### Help

```shell
forge --help
anvil --help
cast --help
```

## Testing

To run the tests using the provided GitHub Actions workflow:

1. Ensure you have set up the project as described in the [Setup](#setup) section.
2. Push your changes to a branch or create a pull request.
3. The tests will automatically run using the workflow defined in `.github/workflows/test.yml`.

## Deployment

To deploy the `OCKEarlyAdopter` contract, use the following command:

```shell
forge script script/OCKEarlyAdopter.s.sol:OCKEarlyAdopterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## Contributing

We welcome contributions to the OnchainKit Early Adopter project! To contribute, please follow these guidelines:

1. Fork the repository.
2. Create a new branch for your feature or bugfix:
    ```shell
    git checkout -b my-feature-branch
    ```
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your fork:
    ```shell
    git push origin my-feature-branch
    ```
5. Create a pull request to the main repository.

## License

This project is licensed under the MIT License.
