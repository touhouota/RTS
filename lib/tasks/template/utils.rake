# frozen_string_literal: true

namespace :template do
  desc "テンプレートをもとにファイル生成する"
  task :create do
    path = Rails.root.join("config", "global")
    files = Dir[path.join("templates", "*")]
    files.each do |file|
      target_name = File.basename(file).sub(/.erb/, "")
      File.open(path.join(target_name), "w") do |f|
        puts "CREATE: #{path.join(target_name)}"
        f << ERB.new(File.new(file).read).result
      end
    end
  end
end
