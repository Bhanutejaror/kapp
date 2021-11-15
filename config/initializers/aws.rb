Aws.config.update({
  region: 'ap-south-1',
  credentials: Aws::Credentials.new(ENV['AKIAQGTXUQ3D2BV5QVY7'], ENV['mMKiZr4fByul2GFbQbU7m0RZgQAeyRMsOPENKoG0']),
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['bhanu24teja'])