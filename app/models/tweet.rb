class Tweet < ActiveRecord::Base
  belongs_to              :brand
  before_save validates   :tweet_post_id, uniqueness: true

  def self.outlier_calculation
    brands = Brand.all
    brands.each do |b|
      brand_id = b.id
    tweet_pull(brand_id)
    end
  end

  def tweet_pull(brand_id)
    tweet_pull = Brand.find(brand_id).tweets
    tweet_pull.each do |t|
      tweet_data = {'tweet_post_id' => t.tweet_post_id,
                    'tweet_date' => t.tweet_date,
                    'tweet_url' => t.tweet_url,
                    'tweet_score' => t.tweet_score}
    tweet_score_analyzer(brand_id, tweet_data)
    end
  end

  def tweet_score_analyzer(brand_id, tweet_data)
    scores = []
    score_data = []
      scores << 'id'
      scores << tweet_data['tweet_post_id']
      scores << 'score'
      scores << tweet_data['tweet_score']
      score_data << tweet_data['tweet_score']
    scores_hash = Hash[*scores]
    tweet_calculator(brand_id, scores, score_data, scores_hash, tweet_data)
  end

  def tweet_calculator(brand_id, scores, scores_data, scores_hash, tweet_data)
    score = scores_hash['score']
    id = scores_hash['id']
    thirty_day_average = [PROPRIETARY :)]
      if score > thirty_day_average
        [PROPRIETARY :)]
      else
        [PROPRIETARY :)]
      end
  end

  def self.oi_mailer
    puts 'Sending out notifier to Jason'
    OiTweetsMailer.oi_tweets_mailer(@tweets).deliver!
  end



end
