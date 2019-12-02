Rails.application.routes.draw do
  get 'stream/index'
  get 'stream/search_con'
  get 'stream/word_cloud'
  get 'stream/search_for_word_cloud'
  root 'stream#index'
end
