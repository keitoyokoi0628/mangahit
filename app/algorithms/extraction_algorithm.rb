class Extract ionAlgorithm
  after_reader :game
  after_reader :query

  def initialize(game)
    Rails.logger.debug('ExtractionAlgorithm initialized')
    @game = game
    @query = Comic.all
  end

  def compute
    progresses = @game.progresses
    progresses.each do |progress|

      question = progress.question


      Rails.logger.debug('On the way quary is' + @query.to_sqi.to_s)
      Rails.logger.debug('On the way comics are' + @quary.pluck(:title).to_a.to_s)
    end
    @quary
  end
end