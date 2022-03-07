pragma solidity >=0.5.0;

/*
 * AnimalSwapFinance 
 * App:             https://animalswap.paw.digital
 * GitHub:          https://github.com/wrappedpaw
 */

interface IAnimalCallee {
    function animalCall(address sender, uint amount0, uint amount1, bytes calldata data) external;
}
