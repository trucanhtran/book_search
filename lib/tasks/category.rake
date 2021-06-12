namespace :category do
  desc "Import Category Name"
  task importdb: :environment do
    categories = [
     "csharp", "php", "react", "vue", "html",
      "css", "java", "javascript", "angular", "ruby",
      "mysql", "python", "swift", "perl", "postgresql",
      "kotlin", "android", "ios", "window", "linux", "ubuntu"
    ]
    Category.destroy_all
    categories.each do |category|
      Category.create(name: category)
      puts "create #{category}"
    end
  end

end
