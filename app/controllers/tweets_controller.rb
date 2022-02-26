class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

 def index
   @tweet = Tweet.all.order(id: "desc")
 end

 def new
   @tweet = Tweet.new
 end

 def show
   @tweet.destroy
   redirect_to tweets_path, notice: "I Delete The Tweets !"
 end

 def edit
 end

 def create
   @tweet = Tweet.new(tweet_params)
   if params[:back]
     render :new
   else
     if @tweet.save
       redirect_to tweets_path, notice: "I have created a blog!"
     else
       render :new
     end
   end
 end


 def update
   if @tweet.update(tweet_params)
     redirect_to tweets_path, notice: "I edited the blog!"
   else
     render :edit
   end
 end


 def confirm
   @tweet = Tweet.new(tweet_params)
   render :new if @tweet.invalid?
 end



 private



 def tweet_params
   params.require(:tweet).permit(:title, :content)
 end

 def set_tweet
  @tweet = Tweet.find(params[:id])
end

end
