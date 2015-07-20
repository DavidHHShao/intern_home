if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AWSAccessKeyId=AKIAJ5KXYDE2UOKGQUNA'],
        :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['internhomeuw']
  end
end