# zk_proof_system

This is a simple zero-knowledge proof system implemented using Noir.

## Circuit Description

The circuit verifies a basic arithmetic operation: `x * y + z == result`.

### Public Inputs
- `x`: A field element
- `y`: A field element
- `z`: A field element
- `result`: A field element

### Private Inputs (Witness)
None in this simple example; all inputs are public for demonstration.

### Constraints
- Computes `temp = x * y` (intermediate, not exposed)
- Asserts `temp + z == result`

## Example
Using the provided `Prover.toml`:
- x = 3
- y = 4
- z = 2
- result = 14

Verification: 3 * 4 + 2 = 14 ✓

## Building and Running
1. Install Noir: [Noir Installation Guide](https://noir-lang.org/getting_started/installation/)
2. Compile the circuit: `nargo compile`
3. Generate proof: `nargo prove`
4. Verify proof: `nargo verify`

## Files
- `src/main.nr`: The Noir circuit code
- `Nargo.toml`: Project configuration
- `Prover.toml`: Witness values for proof generation
- `proof/`: Contains the generated proof and public inputs
- `target/`: Compiled artifacts including verification key