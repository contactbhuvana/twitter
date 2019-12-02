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
end


