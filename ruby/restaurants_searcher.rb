require 'net/http'
require 'json'

# 初期設定
KEYID = "メールに記載されていたアクセスキーをここに入力"
COUNT = 100
PREF = "Z011"
FREEWORD = "渋谷駅"
FORMAT = "json"
PARAMS = {"key": KEYID, "count":COUNT, "large_area":PREF, "keyword":FREEWORD, "format":FORMAT}

def write_data_to_csv(params)
    restaurants = []
    uri = URI.parse("http://webservice.recruit.co.jp/hotpepper/gourmet/v1/")
    uri.query = URI.encode_www_form(PARAMS)  
    json_res = Net::HTTP.get uri
    
    response = JSON.load(json_res)
    
    if response.has_key?("error") then
        puts "エラーが発生しました！"
    end
    for restaurant in response["results"]["shop"] do
        rest_name = restaurant["name"]
        restaurants.append(rest_name)
    end
    
    File.open("restaurants_list.csv", "w") do |file|
        file << restaurants
    end
    return puts restaurants
end

write_data_to_csv(PARAMS)
