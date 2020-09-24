class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  attachment :profile_image, destroy: false


# 能動的関係=フォローしている人の情報
  has_many :relationships, dependent: :destroy
  has_many :followings, through: :relationships, source: :follow
# 受動的関係＝フォロワー、フォローしてくる人の情報
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id', dependent: :destroy
  has_many :followers, through: :reverse_of_relationships, source: :user

# throughオプションによりrelationships経由でfollowings・followersにアクセスできるようになる＝relationshipは中間テーブルであるという意味付け
# = 架空のモデルを介して、対象のモデルと多対多の関連付け => これにより情報抽出可能
# sourceオプション = has_many :through関連付けの関連付け元（従属するモデル※今回はモデルではないもの〔follow〕も含む）名を指定する
# foreign_keyオプション = 関連付けるモデルを指す外部キーのカラム名を設定する。このオプションを使用しなければ、「belongs_toの引数_id」が指定される
# = follow_idを入り口としてねっていう意味。sourceは出口。
# user_id = 人、follow_id = アンカー　人とアンカーは紐で繋がってる（relationshipテーブル）


  validates :name, length: {maximum: 20, minimum: 2}
  validates :introduction, length: { maximum: 50 }

#フォローする
  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

#フォローを外す
  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship #existなら
  end

#フォローしてるか確認する
  def following?(other_user)
    self.followings.include?(other_user)
  end

end


