<div id="top"></div>

<!-- [![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
 -->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/CommanderAstern/rental_gym_equipment">
    <img src="https://solidity.readthedocs.io/en/develop/_images/logo.svg" alt="Logo" width="80" height="80">
  </a>
<h3 align="center">Gym Rental Equipment</h3>

  <p align="center">
    A simple project on the basics of Solidity.
    <br />
    <br />
    <a href="https://github.com/CommanderAstern/rental_gym_equipment/issues">Report Bug</a>
    ·
    <a href="https://github.com/CommanderAstern/rental_gym_equipment/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#Deployment">Deployment</a></li>
        <li><a href="#Accessing the Contract">Accessing the Contract</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project uses solidity to create a smart contract that allows users to rent equipment from a gym.
The smart contract is deployed on the Rinkeby testnet.

The address of the smart contract is: [0xdbF696aAc528eF4b36BEcC0b74dAc773465619de](https://rinkeby.etherscan.io/address/0xdbF696aAc528eF4b36BEcC0b74dAc773465619de)
<br>

### Functions include:
1. Clients can buy access to machines in the gym for time slots of 30 minute
2. The owner can set the price per time slot whenever he wants.
3. Owner can add a new machine anytime he wants
4. Anyone can check whether a client has access to the machine at any given time.
5. The owner can withdraw the profits to his personal account anytime he wants.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [Solidity](https://github.com/ethereum/solidity)
<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/CommanderAstern/rental_gym_equipment.git
   ```
2. Install dependencies
   ```sh
   npm install
   ```
3. Install Mocha Solidity ganache-cli and truffle
    ```sh
    npm install solc web3 mocha ganache-cli @truffle/hdwallet-provider
    ```
<p align="right">(<a href="#top">back to top</a>)</p>

### Deployment
1. Run deploy script
    ```sh
    node deploy.js
    ```
The Address and the menomonic of the contract is already present in the code
<p align="right">(<a href="#top">back to top</a>)</p>


### Accessing the Contract
1. Go to [Remix](https://remix.ethereum.org/)
2. On any solidity file, click on the file name and copy the code from contracts/Inbox.sol
3. Paste the code into the Remix IDE
4. Go to Deploy and Run transactions (Left Sidebar)
5. Select Enviornment: Injected Web3
6. Copy the address of the contract and paste it into the address field
7. Click on the "At Address" Button
8. You will be able to interact with the contract which is located under the Deployed Contracts tab
<p align="right">(<a href="#top">back to top</a>)</p>
<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Best-README-Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/CommanderAstern/rental_gym_equipment.svg?style=for-the-badge
[contributors-url]: https://github.com/CommanderAstern/rental_gym_equipment/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/CommanderAstern/rental_gym_equipment.svg?style=for-the-badge
[forks-url]: https://github.com/CommanderAstern/rental_gym_equipment/network/members
[stars-shield]: https://img.shields.io/github/stars/CommanderAstern/rental_gym_equipment.svg?style=for-the-badge
[stars-url]: https://github.com/CommanderAstern/rental_gym_equipment/stargazers
[issues-shield]: https://img.shields.io/github/issues/CommanderAstern/rental_gym_equipment.svg?style=for-the-badge
[issues-url]: https://github.com/CommanderAstern/rental_gym_equipment/issues
[license-shield]: https://img.shields.io/github/license/CommanderAstern/rental_gym_equipment.svg?style=for-the-badge
[license-url]: https://github.com/CommanderAstern/rental_gym_equipment/blob/master/LICENSE.md
[product-screenshot]: img/screenshot.PNG
