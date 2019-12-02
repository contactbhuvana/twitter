class Stream < ApplicationRecord
  attr_reader :query 
  def client 
      @client = Twitter::REST::Client.new(
        :consumer_key => "SLW1Ge1p6vtZQGlsuNIQiYGDG",
        :consumer_secret => "JiI7UJBcmuKxpGKUXDy23hzrJEuIsWhJ5Z99Je7Xwd5MECETvD",
        :oauth_token => "1199676253319548928-ydCRxDBOOitnqTlQAFghXNpvaAJcq5",
        :oauth_token_secret => "GVUUJxr02IhXgrB1bN7rrtuieZvC1qQA7cvxPIGz4j4u5"
        )
  end 
  def search(query) 
    begin
      results = client.search("#{query}", result_type: "recent").take(100).collect
    end 
  end
end

