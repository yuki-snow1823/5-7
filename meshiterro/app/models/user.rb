class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_images, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :profile_image # ここを追加
end

# 5-4:User(Nではない方)に関連させたいモデルを書くということかも
# favariteはいいね機能のやつ
