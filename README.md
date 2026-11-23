# swift-density

Use this package when a value is density: how much mass a volume holds. Start from `Density`, a kind of quantity of swift-quantity, and make an amount with `Density.amount(_:)`; it is a `Density.Value<Scalar>`, a `Tagged<Density, Scalar>`.

## Laws

- An amount of density is stored in kilograms per cubic metre, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: -3, mass: 1 (exponents of the base dimensions).
- Amounts of density add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- `Density.Surface` is surface density: how much mass an area of a plate or membrane holds, in kilograms per square metre, of dimension length: -2, mass: 1.
- `Density.Linear` is linear density: how much mass a length of a string or bar holds, in kilograms per metre, of dimension length: -1, mass: 1.
- A mass over a volume is a density, over an area a surface density, over a length a linear density; each times its extent is the mass again.
