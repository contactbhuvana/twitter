class StreamController < ActionController::Base 
  layout 'application' 
    def search_con 
      @results = Stream.new.search(params[:q]).to_json
        render "tweets" 
    end 

    def search_for_word_cloud
      @results_for_word_cloud = Stream.new.search(params[:q]).to_json
      render :json => @results_for_word_cloud.to_s
    end

    def analyze_sentiment
      @positive_score = 0
      @negative_score = 0
      @values_for_sentiment_analysis = Stream.new.search(params[:q]).to_json
      @values_for_sentiment_analysis = JSON.parse(@values_for_sentiment_analysis)
      @values_for_sentiment_analysis.each do |values|
        word_sentiment = $analyzer.sentiment values['text']
        if word_sentiment == :positive
          @positive_score += $analyzer.score values['text']
        elsif word_sentiment == :negative
          @negative_score += $analyzer.score values['text']
        end
      end
      render :json =>{positive_score:@positive_score, negative_score: @negative_score.abs}
    end
end


