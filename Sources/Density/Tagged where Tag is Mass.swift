public import Quantity

extension Tagged::Tagged where Tag == Mass, Underlying: FloatingPoint {
    /// How much of this mass a cubic metre of `rhs` holds.
    @inlinable
    public static func / (lhs: Self, rhs: Volume<Space.Physical>.Value<Underlying>) -> Density.Value<Underlying> {
        Density.amount(lhs.underlying / rhs.underlying)
    }
}

extension Tagged::Tagged where Tag == Mass, Underlying: FloatingPoint {
    /// How much of this mass a square metre of `rhs` holds.
    @inlinable
    public static func / (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Density.Surface.Value<Underlying> {
        Density.Surface.amount(lhs.underlying / rhs.underlying)
    }
}

extension Tagged::Tagged where Tag == Mass, Underlying: FloatingPoint {
    /// How much of this mass a metre of `rhs` holds.
    @inlinable
    public static func / (lhs: Self, rhs: Measure<1, Space.Physical>.Value<Underlying>) -> Density.Linear.Value<Underlying> {
        Density.Linear.amount(lhs.underlying / rhs.underlying)
    }
}
