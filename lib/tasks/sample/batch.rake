namespace :sample do
  namespace :batch do
    namespace :create_tweet do
      desc 'batch to check the behavior'
      task execute: :environment do
        Batch::CreateTweet.new.execute
      end
    end
  end
end 