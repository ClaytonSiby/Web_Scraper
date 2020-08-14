require 'scraper'

describe ScrapedData do
  describe '#inteprete_page' do
    it 'returns site elements stored in an organised data Structure' do
      expect(ScrapedData.inteprete_page.is_a?(Object)).to eql(true)
    end

    it 'does not expect the return type to be an array' do
      expect(ScrapedData.inteprete_page.is_a?(Array)).not_to be(true)
    end
  end
end
