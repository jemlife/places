require('rspec')
require('places')

describe(Places) do
  describe('#description') do
    it('outputs user input') do
      test_places = Places.new('Costa Rica')
      expect(test_places.description()).to(eq('Costa Rica'))
    end
  end
  describe('.all') do
    it('outputs empty array') do
      expect(Places.all()).to(eq([]))
    end
  end
end
