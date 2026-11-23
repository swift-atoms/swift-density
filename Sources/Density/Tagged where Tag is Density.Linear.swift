public import Quantity

extension Tagged::Tagged where Tag == Density.Linear, Underlying: Numeric {
    /// The mass of the length `rhs` at this linear density.
    @inlinable
    public static func * (lhs: Self, rhs: Measure<1, Space.Physical>.Value<Underlying>) -> Mass.Value<Underlying> {
        Mass.amount(lhs.underlying * rhs.underlying)
    }
}
