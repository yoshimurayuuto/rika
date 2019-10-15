class FeedMailer < ApplicationMailer
  def feed_mail(feed)
    @feed = feed

    mail to: "0615yutoyoshimu@gmail.com", subject: "お問い合わせの確認メール"
  end
end
