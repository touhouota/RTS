RSpec.configure do |config|
  if config.filter.rules[:with_user]
    config.before :example do
      puts "with_user"
    end
  else
    config.before :example do
      puts "without_user"
    end
  end
end
