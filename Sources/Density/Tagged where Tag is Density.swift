public import Quantity

extension Tagged::Tagged where Tag == Density, Underlying: Numeric {
    /// The mass of the volume `rhs` at this density.
    @inlinable
    public static func * (lhs: Self, rhs: Volume.Value<Underlying>) -> Mass.Value<Underlying> {
        Mass.amount(lhs.underlying * rhs.underlying)
    }
}
