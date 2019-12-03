Rails.application.routes.draw do
  get 'stream/index'
  get 'stream/search_con'
  get 'stream/word_cloud'
  get 'stream/search_for_word_cloud'
  get 'stream/analyze_sentiment'
  get 'stream/sentimental_analysis'
  root 'stream#index'
end
