require "medium_scraper/version"
require 'mechanize'
require 'nokogiri'
require 'json'
require 'awesome_print'

module MediumScraper
  class Post
      def self.latest handle
          url = "https://medium.com/@#{handle}/latest"
          agent = Mechanize.new
          html = agent.get(url).body
          doc = Nokogiri::HTML(html)

          scripts = doc.search('//script')
          tag = scripts[6]

          front_string = "<script>// <![CDATA[\nwindow[\"obvInit\"]("
          back_string = ")\n// ]]></script>".reverse

          tag = scripts[6].to_s.sub(front_string, '')
          tag = tag.reverse.to_s.sub(back_string, '').reverse

          blob = JSON.parse(tag)

          blob_post = blob['references']['Post']
          blob_user = blob['references']['User']

          if blob_post
              posts = []
              blob_post.each do |blob|
                  post = {}
                  post[:title] = blob[1]['title']
                  post[:subtitle] = blob[1]['content']['subtitle']
                  post[:createdAt] = blob[1]['virtuals']['createdAtEnglish']
                  posts << post
              end
          end

          if blob_user
              user = {}
              blob_user.each do |blob|
                  user[:name] = blob[1]['name']
                  user[:username] = blob[1]['username']
                  user[:url] = "https://medium.com/@#{blob[1]['username']}/"
                  user[:total_posts] = posts.count if blob_post
              end
          end

          object = {
              user: user,
             posts: posts 
          }

          object
      end
  end
end
