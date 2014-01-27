class OiTweetsMailer < ActionMailer::Base
  default from: ''

  def oi_tweets_mailer(tweet)
    @brands = Brand.all
    emails = []
      mail(:to => emails,
           :subject => 'OI Daily Report for ' + Date.today.to_s) do |format|
             format.text
           end


  end

end
