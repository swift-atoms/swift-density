import Density
import Testing

enum `Density Tests` {}

extension `Density Tests` {
    @Suite struct `Density is a kind of quantity in kilograms per cubic metre` {
        @Test func `Its dimension is length: -3, mass: 1`() {
            #expect(Density.dimension == Quantity.Dimension(length: -3, mass: 1))
        }

        @Test func `An amount given in kilograms per cubic metre keeps its scalar`() {
            #expect(Density.amount(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A density is a mass over a volume, an area or a length` {
        @Test func `Their dimensions balance`() {
            #expect(Density.dimension == Mass.dimension / Volume.dimension)
            #expect(Density.Surface.dimension == Mass.dimension / Area.dimension)
            #expect(Density.Linear.dimension == Mass.dimension / Length.dimension)
        }

        @Test func `A mass over each extent, and back`() {
            let mass = Mass.kilograms(6.0)
            #expect(mass / Volume.amount(2.0) == Density.amount(3.0))
            #expect(Density.amount(3.0) * Volume.amount(2.0) == mass)
            #expect(mass / Area.amount(2.0) == Density.Surface.amount(3.0))
            #expect(Density.Surface.amount(3.0) * Area.amount(2.0) == mass)
            #expect(mass / Length.metres(2.0) == Density.Linear.amount(3.0))
            #expect(Density.Linear.amount(3.0) * Length.metres(2.0) == mass)
        }
    }
}
