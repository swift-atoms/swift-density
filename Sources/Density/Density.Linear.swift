extension Density {
    /// Linear density: how much mass a length of a string or bar holds, stored in kilograms per metre.
    public enum Linear {}
}

extension Density.Linear: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: -1, mass: 1) }
}

extension Density.Linear {
    /// An amount of this kind, its scalar in kilograms per metre.
    public typealias Value<Scalar> = Tagged<Density.Linear, Scalar>
}
