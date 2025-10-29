# 🧠 ChainMemos

A simple, permanent, and decentralized way to store short notes **directly on the blockchain**.  
Powered by Solidity and deployed on the **Celo Sepolia Testnet**.

---

## 📜 Project Description

**ChainMemos** is an on-chain note storage system where anyone can write and retrieve short memos that live forever on the blockchain.  
Each memo includes the author's wallet address, content, and timestamp — creating a transparent, immutable public diary of thoughts or messages.

This project demonstrates the basics of **Solidity**, **event logging**, and **decentralized data storage** — making it perfect for beginners learning smart contract development.

---

## ⚙️ What It Does

- Allows users to **add a new memo** (up to 280 characters).  
- Stores all memos **permanently on-chain** — no central servers.  
- Emits an event every time a memo is added.  
- Lets anyone **read memos** or check how many have been posted.

---

## ✨ Features

- 🧾 **Add and Read Memos:** Store short text notes directly on the blockchain.  
- ⏱ **Immutable History:** Every memo includes a timestamp and author address.  
- 🔍 **Transparency:** All memos are public and verifiable on-chain.  
- ⚡ **Gas-Efficient:** Lightweight contract design, optimized for low transaction costs.  
- 📚 **Beginner-Friendly Solidity Example:** Great for learning how to build and deploy your first smart contract.

---

## 🚀 Deployed Smart Contract

**Celo Sepolia Testnet:**  
🔗 [View on Blockscout](https://celo-sepolia.blockscout.com/tx/0x393d4f76f00e7375292656cc0790691f77449b31dbca1ea744e3cee46360c226)


🧩 How to Use

Open Remix IDE
.

Paste the code above into a new Solidity file.

Compile using Solidity 0.8.0+.

Deploy the contract on Celo Sepolia Testnet (or any EVM-compatible network).

Use the functions:

addMemo("Your text here") → to store a memo.

getMemo(index) → to read a specific memo.

getMemoCount() → to see how many memos exist.
<img width="1920" height="1020" alt="image" src="https://github.com/user-attachments/assets/22229294-88c0-4663-869c-008e996efabb" />
