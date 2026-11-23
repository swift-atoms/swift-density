/// Density: how much mass a volume holds, stored in kilograms per cubic metre.
public enum Density {}

extension Density: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -3, mass: 1) }
}

extension Density {
    /// An amount of density, its scalar in kilograms per cubic metre.
    public typealias Value<Scalar> = Tagged<Density, Scalar>
}
