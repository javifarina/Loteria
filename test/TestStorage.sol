// SPDX-License-Identififer: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "truffle/DeployedAddresses.sol";
import "../contracts/Storage.sol";
import "truffle/Assert.sol";

contract TestStorage {

    function testInitialValue() public {
        Storage contrato = Storage(DeployedAddresses.Storage());
        uint resultado = contrato.retrieve();
        Assert.equal(0, resultado, "El valor almacenado debe ser 0");
    }

    function testInitialValueNewContract() public {
        Storage contrato = new Storage();
        uint resultado = contrato.retrieve();
        Assert.equal(0, resultado, "El valor almacenado para un contrato nuevo debe ser 0");
    }
     function testStoreValue() public {
        Storage contrato = Storage(DeployedAddresses.Storage());
        contrato.store(1234);
        uint resultado = contrato.retrieve();
        Assert.equal(1234, resultado, "El valor almacenado debe ser 1234");
    }

}
