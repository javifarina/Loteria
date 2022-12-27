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
        nft= address(new mainERC721());
    }

    //Ganador del premio de Loteria
    address public ganador;

    // Registro de usuario con su contrato
    mapping(address => address) public usuario_contract;

    //Precio de los Tokens
    function precioTokens(uint256 _numTokens) public pure returns (uint256){
        return _numTokens * (1 ether);
    }

    //Visualizacion de balance de tokens  ERC20 de un usuario
    function balanceTokens(address _account) public view returns (uint256){
        return balanceOf(_account);
    }

    //Visualizacion de balance de tokens  ERC20 de Smart Contract
    function balanceTokensSC() public view returns (uint256){
        return balanceOf(address(this));
    }

    //Balance de ether del smart contract
    function balanceetherSC() public view returns (uint256) {
        return address(this).balance / 10**18;
    }

    //Cargar tokens a el Contrato 
    function mint(uint256, _cant) public onlyOwner {
        _mint(address(this), _cant);
    }








 }

 contract mainERC721 is ERC721{
    constructor() ERC721("Loteria", "STE"){}
 }