extension Density {
    /// Surface density: how much mass an area of a plate or membrane holds, stored in kilograms per square metre.
    public enum Surface {}
}

extension Density.Surface: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -2, mass: 1) }
}

extension Density.Surface {
    /// An amount of this kind, its scalar in kilograms per square metre.
    public typealias Value<Scalar> = Tagged<Density.Surface, Scalar>

    /// An amount of this kind given in kilograms per square metre.
    @inlinable
    public static func amount<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
