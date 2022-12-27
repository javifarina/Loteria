// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Loteria de Prueba 
 * @dev Usando Token RC20 RC721
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 * @Autor Javier Fariñ
 */
 //import "@openzeppeling/contract@4.5.0/token/ERC20/ERC20.
 //import "@openzeppeling/contract@4.5.0/token/ERC721/ERC721.sol
 //import "@openzeppeling/contract@4.5.0/access/Ownable.sol

 contract Loteria  is ERC20, Ownable{
    //----------------------------------------------------
    //Gestion de tokens
    //----------------------------------------------------

    // Direccion del contrato NFT del Proyecto
    address public nft;
    constructor() ERC20("Loteria", "JA"){
        _mint(address(this), 1000);
    }

 }

 contract mainERC721 is ERC721{
    constructor() ERC721("Loteria", "STE"){}
 }