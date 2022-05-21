class Batch::CreateTweet
  def execute
    Tweet.create(title: "hello", content: "created in batch")
    puts "The batch has been executed."
  end
end 