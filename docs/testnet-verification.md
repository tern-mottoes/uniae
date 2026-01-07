# Uniae — Base Sepolia Testnet Validation

This document outlines the validation steps for **Uniae** deployed on **Base Sepolia** during testnet operations.

---

## Testnet Details

- **Network**: Base Sepolia
- **Chain ID**: 84532
- **RPC URL**: https://sepolia.base.org
- **Explorer**: https://sepolia.basescan.org

---

## Validation Steps

### Step 1 — Configuration Verification

- [ ] Verify that **Base Sepolia** is correctly listed in the `config/base.networks.json`.
- [ ] Ensure that the **RPC URL** for Sepolia is correctly set to `https://sepolia.base.org`.
- [ ] Confirm that **Chain ID** is `84532`.

### Step 2 — RPC Connectivity Test

- [ ] Fetch the **latest block number** from the RPC endpoint.
- [ ] Verify that the block number increments on a subsequent fetch.
- [ ] If connectivity fails, switch to the fallback RPC URL (`https://base-sepolia-rpc.publicnode.com`).

### Step 3 — Read-only Data Validation

Using addresses from `scripts/test-addresses.json`:

- [ ] Perform an **ETH balance lookup** for `exampleEOA` and ensure it returns a valid non-negative value.
- [ ] Verify the **contract code** for `exampleContract` is returned (either bytecode or `0x` if not deployed).
- [ ] Ensure querying the **zero address** returns a zero balance and querying the **burn address** does not cause any errors.

### Step 4 — Explorer Verification

- [ ] Open **exampleEOA** in BaseScan Sepolia to ensure the address resolves to the correct page.
- [ ] Verify that the block number in **BaseScan Sepolia** matches the RPC results.

### Step 5 — Contract Deployment Verification (Optional)

If you are deploying contracts via **deploy-contracts.sh**, verify:
- [ ] **Contract address**: Ensure the contract is deployed at the correct address.
- [ ] **Transaction hash**: Verify the transaction is logged in BaseScan Sepolia.
- [ ] **Contract code**: Validate that the deployed contract matches the expected code.

---

## Final Review

- [ ] All validation steps passed on **Base Sepolia**.
- [ ] Ready for mainnet deployment after final checks.

_Last updated: initial scaffold_
