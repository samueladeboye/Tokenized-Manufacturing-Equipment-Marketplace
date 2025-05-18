# Tokenized Manufacturing Equipment Marketplace

A decentralized marketplace for industrial equipment built on the Stacks blockchain using Clarity smart contracts.

## Overview

This project implements a tokenized marketplace for manufacturing equipment, allowing for secure verification, registration, and transfer of industrial machinery. The system uses a series of smart contracts to ensure trust, transparency, and security throughout the equipment lifecycle.

## Smart Contracts

The marketplace consists of five core smart contracts:

1. **Seller Verification Contract**: Validates equipment owners before they can list items on the marketplace.
2. **Asset Registration Contract**: Records detailed information about industrial machinery, creating a digital representation of physical assets.
3. **Condition Verification Contract**: Validates and records the current condition and operational status of equipment.
4. **Transaction Escrow Contract**: Manages secure payment between buyers and sellers, releasing funds only when conditions are met.
5. **Transfer Verification Contract**: Records ownership changes and maintains the provenance history of each piece of equipment.

## Features

- Secure ownership verification
- Transparent equipment history
- Condition reporting and verification
- Escrow-based transactions
- Immutable record of ownership transfers
- Tokenized representation of physical assets

## Getting Started

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) for local Clarity development
- Node.js and npm for testing

### Installation

1. Clone the repository:
