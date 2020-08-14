require 'structure_data'

describe ArticleInfo do
  subject { ArticleInfo.new }

  let(:feature_array) { [1, 2, 3, 4, 5] }
  let(:objects) { [{ one: 1, claps_count: 5 }, { two: 2, claps_count: 3 }] }

  describe '#number_of_articles' do
    it 'calculates the number of elements in an array' do
      expect(subject.number_of_articles(feature_array)).to eql(5)
    end
  end

  describe '#arrange_articles' do
    it 'returns a sorted array of objects in discending order' do
      expect(subject.arrange_articles(objects)).not_to eql(objects.reverse)
    end

    it 'returns an array.' do
      expect(subject.arrange_articles(objects).class).to eql(Array)
    end
  end
end
