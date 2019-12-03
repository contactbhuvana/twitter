# Mini Twitter

Mini Twitter is a small web application, mainly build to `search` real time tweets and features include `word cloud` and `sentimental analysis` 

#### Technology Used
```
* Ruby - 2.4.3
* Rails - 5.2.3
* d3.js
* Bootstrap - Design
```

#### Features

* Search tweet which you wants to view. User can see the tweets in real time.

* You can form a word cloud for tweet seach result.

    ```
    d3.js used to form word cloud
    ```

* You can analyze sentiment of the tweet.

    ```
    gem 'sentimental'
    d3.js 
    ```

#### How to use the application

1. Type tweet name in the search box and press enter

![](app/assets/tweet_search.png)

2. You can able to view list of related tweets

![](app/assets/tweet_list.png)

3. Use navigation's in the top right corner

![](app/assets/home_nav_link.png)

4. Type Tweet name, for which you want to form word cloud.

![](app/assets/wc_search.png)

5. You can able to see formed word cloud

![](app/assets/word_cloud.png)

6. Type Tweet name, for which you want to do sentimental analysis.

![](app/assets/sa_search.png)

7. You can able to see sentimental analysis result

![](app/assets/sa_graph.png)

-----------
