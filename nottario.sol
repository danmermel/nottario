pragma solidity ^0.4.0;

contract nottario {

  bytes32 public hash;
  bytes32 public name;
  address public owner;
  uint public timestamp;

  function nottario(bytes32 _hash, bytes32 _name) payable {
    if (msg.value < 1000000) throw;
    owner = msg.sender;
    name = _name;
    hash = _hash;
    timestamp = now;
    address bank = 0xa827177308ce5a395905aa077115f103343ad7dc;
    if (!bank.send(msg.value)) throw;
  }
}
