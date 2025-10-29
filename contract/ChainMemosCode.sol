// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title ChainMemos - A simple on-chain note storage system
/// @author You
/// @notice Store and read short memos permanently on the blockchain
contract ChainMemos {
    // Struct to hold each memo
    struct Memo {
        address author;
        string content;
        uint256 timestamp;
    }

    // Array of all memos
    Memo[] private memos;

    // Event emitted when a new memo is added
    event MemoAdded(address indexed author, uint256 indexed memoId, string content, uint256 timestamp);

    /// @notice Add a new memo to the blockchain
    /// @param _content The text content of the memo
    function addMemo(string calldata _content) external {
        require(bytes(_content).length > 0, "Memo cannot be empty");
        require(bytes(_content).length <= 280, "Memo too long (max 280 chars)");

        memos.push(Memo({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp
        }));

        emit MemoAdded(msg.sender, memos.length - 1, _content, block.timestamp);
    }

    /// @notice Returns a memo by its index
    /// @param _index The index of the memo
    /// @return author Address of the memo creator
    /// @return content Text of the memo
    /// @return timestamp Unix timestamp of when the memo was created
    function getMemo(uint256 _index) external view returns (address author, string memory content, uint256 timestamp) {
        require(_index < memos.length, "Invalid memo index");
        Memo memory memo = memos[_index];
        return (memo.author, memo.content, memo.timestamp);
    }

    /// @notice Returns total number of memos stored
    function getMemoCount() external view returns (uint256) {
        return memos.length;
    }
}
