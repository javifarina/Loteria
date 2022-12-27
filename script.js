const Storage = artifacts.require("Storage");

module.exports = async function (callback) {
    let contratoStorage = await Storage.new();
    let resultado = await contratoStorage.retrieve();
    console.log("Dato guardado", resultado.toNumber());
    await contratoStorage.Storage(10);
    resultado = await contratoStorage.retrieve();
    console.log("Dato guardado", resultado.toNumber());

    callback()
}
  
