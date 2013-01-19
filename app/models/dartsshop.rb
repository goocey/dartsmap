class Dartsshop < ActiveRecord::Base
  acts_as_gmappable
  attr_accessible :shopname, :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode
  def search_addr(name)
    @latlons = Gecoder.search(name)
  end
  
  def Dartsshop.get_shop_data
    # スクレイピングするぞ！
    agent = Mechanize.new
    hoge = agent.get('http://search.dartslive.jp/list/%E6%9D%B1%E4%BA%AC%E9%83%BD?p=0')
    # お店のリスト
    hoge.search('/html/body/div/div/div[2]/div/div[5]').inner_html
    # お店の名称
    shopname = hoge.search('/html/body/div/div/div[2]/div/div[5]').search('p/a')
    # 踏み込んでみよう♪お店の住所
    shopaddress = hoge.search("/html/body/div/div/div[2]/div/div[5]").search("li[@class='address']")

    #お店の名前と住所を結合する
    shopinfo = Hash.new
    for i in 0..shopname.count-1 do
      shopinfo[shopname[i].inner_text.to_s] =  shopaddress[i].inner_text.to_s
    end

    # 各々保存していく
    shopinfo.each do |name, address|
      shop = self.new(:shopname => name, :address => address)
      shop.save
    end
  end
  
  def gmaps4rails_address
  end

  def Dartsshop.get_shop_latlon
    target_record = Dartsshop.find(:all, :conditions => {:latitude => nil, :longitude => nil})
    target_record.each do | shop |
      geo = Geocoder.search(shop.address)
    binding.pry
    shop.update_attributes!(:latitude => geo[0].latitude)
    shop.update_attributes!(:longitude => geo[0].longitude)
    end
  end
    
end
