class Stream < ApplicationRecord
  attr_reader :query 
  def client 
      @client = Twitter::REST::Client.new(
        :consumer_key => "SECRET KEY",
        :consumer_secret => "CONSUMER SECRET",
        :oauth_token => "OUTH KEY",
        :oauth_token_secret => "OUTH SECRET"
        )
  end 
  def search(query) 
    begin
      results = client.search("#{query}", result_type: "recent").take(100).collect
    end 
  end
end

