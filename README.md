# Chatterbox

A decentralized peer-to-peer messaging platform built with Flutter, using Bluetooth Low Energy (BLE) mesh networking for infrastructure-free offline communication.

## 📌 Project Statement
To build a resilient offline messaging application that relies entirely on decentralized Bluetooth Low Energy mesh networks rather than central servers, enabling communication in disconnected environments.

## 📚 Background
In situations where internet connectivity is unavailable (e.g., remote areas, disasters, crowded events), traditional messaging apps fail. Chatterbox solves this by creating a dynamic mesh network across nearby devices. Using multi-hop packet relaying and flood-based routing, messages propagate through intermediate peers until they reach their destination, ensuring reliable offline delivery.

## 🔧 Methodology & Features
- **BLE Mesh Networking:** Utilized GATT-based peer discovery and multi-hop packet relaying for offline communication.
- **End-to-End Encryption:** Integrated AES-256 encryption with compact binary packet protocols to keep all offline messages secure.
- **Adaptive Connection Management:** Engineered resilient network topologies and background synchronization pipelines to maintain connections across shifting device configurations.
- **Flood-Based Routing:** Optimized message propagation algorithms to drastically reduce latency and improve delivery reliability across unstable local mesh networks.

## 🛠 Tools & Technologies
- **Framework:** Flutter / Dart
- **Networking:** Bluetooth Low Energy (BLE), Mesh Networking
- **Security:** AES-256 Encryption
- **Data Protocols:** Compact Binary Packet Protocols
