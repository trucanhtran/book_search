require 'net/http'
namespace :product do
  desc "TODO"
  task importdb: :environment do
    categories = Category.all
    original_url = "https://api.itbook.store/1.0/search/"
    categories.each do |category|
      url = original_url + category.name
      resp = Net::HTTP.get_response(URI.parse(url))
      data = resp.body
      result = JSON.parse(data)
      result["books"].each do |book|
        category.products.create(
          title: book["title"],
          sub_title: book["subtitle"],
          isbn: book["isbn13"],
          price: book["price"].gsub("$", "").to_f,
          image: book["image"],
          url: book["url"]
        )
        puts "#{book["title"]}"
      end
    end
  end

end
