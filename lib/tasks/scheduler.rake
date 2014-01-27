
  desc 'Pulls tweet data and stores in in the database'

      task :tweet_pull => :environment do
        puts ' Pulling tweets'
        Brand.twitter_initialize
        puts 'DONE!'
      end

  desc 'Analyzes and scores tweets'

      task :tweet_analyzer => :environment do
        puts 'Analyzing tweets'
        Tweet.outlier_calculation
      end

  desc 'Sends the ads team an email every morning regarding Over-Indexing Tweets'

      task :oi_mailer => :environment do
           puts 'Sending the ads team an email right now'
           Tweet.oi_mailer
           puts 'all done!'
      end
