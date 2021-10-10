class Condition < ApplicationRecord
  has_many :admins

  # 拘束時間計算
  def sum_w_total
    w_hours + w_rest
  end
end
