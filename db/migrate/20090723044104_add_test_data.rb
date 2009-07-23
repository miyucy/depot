# -*- coding: utf-8 -*-
class AddTestData < ActiveRecord::Migration
  def self.up
    Product.delete_all
    Product.create(:title => 'RailsによるアジャイルWebアプリケーション開発 第2版',
                   :description =>
                   %{多様かつ高度なWebアプリケーションを迅速に開発するフレームワークとして、ますます大きな注目と人気を集める Ruby on Rails。
本書はRailsの開発者自身が執筆に参加した唯一の原書Agile Web Development with Rails Second Edition（2006年12月発行）を翻訳する、まさにRailsのバイブルといえる1冊！},
                   :image_url => 'http://ssl.ohmsha.co.jp/imgm/978-4-274-06696-2.gif',
                   :price => 4410)
  end

  def self.down
    Product.delete_all
  end
end
