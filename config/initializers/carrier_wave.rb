if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAJ55YG24ETF4KIDPA',
        :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'internhomeuw'
  end
end