class Brand < ActiveRecord::Base
  has_many :tweets

  def fetch_tweets_from_twitter(client)
    brands = Brand.all
    brands.each do |b|
      twitter_handle = b.twitter_handle
      brand_id = b.id
    tweet_retrieval(twitter_handle, brand_id, client)
    end
  end

  def tweet_retrieval(twitter_handle, brand_id, client)
    range = [0..20]
    range.each do |i|
      tweets = client.user_timeline(twitter_handle, :count => 200, :exclude_replies => true, :include_rts => false, :page => i)
    tweet_data_junction(twitter_handle, tweets, brand_id)
    end
  end

  def tweet_data_junction(twitter_handle, tweets, brand_id)
    if tweets.nil?
      puts('LIMIT REACHED. Stopping now.')
    else
      tweet_data_parser(twitter_handle, tweets, brand_id)
    end
  end

  def tweet_data_parser(twitter_handle, tweets, brand_id)
    tweets.each do |t|
      tweet_level_data =        {'tweet_post_id' => t.id.to_s,
                                 'tweet_copy' => t.text,
                                 'tweet_url' => t.url.to_s ,
                                 'tweet_date' => t.created_at}

      tweet_level_engagements = {'tweet_favs' => t.favorite_count.to_i,
                                 'tweet_retweets' => t.retweet_count.to_i,
                                 'tweet_total_engagements' => [PROPRIETARY :)]
                                 'tweet_score' => [PROPRIETARY :)]
    tweet_processing(tweet_level_data, tweet_level_engagements, brand_id)
    end
  end

  def tweet_processing(tweet_level_data, tweet_level_engagements, brand_id)
    tweet_processing = Tweet.find_or_create_by(:tweet_post_id => tweet_level_data['tweet_post_id'])
    tweet_processing.update_attributes(:brand_id =>                brand_id,
                                       :tweet_copy =>              tweet_level_data['tweet_copy'],
                                       :tweet_url =>               tweet_level_data['tweet_url'],
                                       :tweet_date =>              tweet_level_data['tweet_date'],
                                       :tweet_post_id =>           tweet_level_data['tweet_post_id'],
                                       :tweet_retweets =>          tweet_level_engagements['tweet_retweets'],
                                       :tweet_favs =>              tweet_level_engagements['tweet_favs'],
                                       :tweet_total_engagements => tweet_level_engagements['tweet_total_engagements'],
                                       :tweet_score =>             tweet_level_engagements['tweet_score'])
  end

end
