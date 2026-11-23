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
            #expect(Density.dimension == Mass.dimension / Volume<Space.Physical>.dimension)
            #expect(Density.Surface.dimension == Mass.dimension / Area<Space.Physical>.dimension)
            #expect(Density.Linear.dimension == Mass.dimension / Measure<1, Space.Physical>.dimension)
        }

        @Test func `A mass over each extent, and back`() {
            let mass = Mass.kilograms(6.0)
            #expect(mass / Volume<Space.Physical>.amount(2.0) == Density.amount(3.0))
            #expect(Density.amount(3.0) * Volume<Space.Physical>.amount(2.0) == mass)
            #expect(mass / Area<Space.Physical>.amount(2.0) == Density.Surface.amount(3.0))
            #expect(Density.Surface.amount(3.0) * Area<Space.Physical>.amount(2.0) == mass)
            #expect(mass / Space.Physical.metres(2.0) == Density.Linear.amount(3.0))
            #expect(Density.Linear.amount(3.0) * Space.Physical.metres(2.0) == mass)
        }
    }
}
