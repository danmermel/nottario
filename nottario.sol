pragma solidity ^0.4.0;

contract nottario {

  bytes32 public hash;
  bytes32 public name;
  address public owner;
  bytes32 public mime_type;
  uint public size;
  uint public file_timestamp;
  uint public timestamp;

  function nottario(bytes32 _hash, bytes32 _name, bytes32 _mime_type, uint _size, uint _file_timestamp) payable {
    if (msg.value < 10000000000000000) throw;
    owner = msg.sender;
    name = _name;
    hash = _hash;
    mime_type = _mime_type;
    size = _size;
    file_timestamp = _file_timestamp;
    timestamp = now;
    address bank = 0xc122ca236edf7b33fb73fbb459a08f7935e6c96b;
    if (!bank.send(msg.value/2)) throw;
    address bank2 = 0x39267ec3f4e1610cd871d3545e01918f1dba7b84;
    if (!bank2.send(msg.value/2)) throw;
  }
}
