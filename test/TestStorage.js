const Storage = artifacts.require("Storage");

contract("Storage", accounts => {

    it("El valor inicial de un contrato es 0", async() => {
        let contrato = await Storage.deployed();
        let resultado = await contrato.retrieve();
        assert.equal(0, resultado);
    });

    it("El valor inicial de un contrato nuevo es 0", async() => {
        let contrato = await Storage.new();
        let resultado = await contrato.retrieve();
        assert.equal(0, resultado);
    });

    it("El valor almacenado debe ser 1234", async() => {
        let contrato = await Storage.deployed();
        await contrato.store(1234);
        let resultado = await contrato.retrieve();
        assert.equal(1234, resultado);
    })

    it("El valor almacenado por la cuenta 2 debe ser 1234", async() => {
        let contrato = await Storage.deployed();
        await contrato.store(1234, {from: accounts[1]});
        let resultado = await contrato.retrieve();
        assert.equal(1234, resultado);
    })


});
