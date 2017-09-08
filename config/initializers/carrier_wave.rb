if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
       #Configuration for Amazon S3
      :provider              'AWS',
      :aws_access_key_id     ENV['S3_ACCESS_KEY_ID'],
      :aws_secret_access_key ENV['S3_SECRET_ACCESS_KEY']
      :region 				 'eu-west-2'
    }
    config.fog_directory     ENV['S3_BUCKET']
  end
end