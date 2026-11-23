public import Quantity

extension Tagged::Tagged where Tag == Density.Surface, Underlying: Numeric {
    /// The mass of the area `rhs` at this surface density.
    @inlinable
    public static func * (lhs: Self, rhs: Area<Space.Physical>.Value<Underlying>) -> Mass.Value<Underlying> {
        Mass.amount(lhs.underlying * rhs.underlying)
    }
}
