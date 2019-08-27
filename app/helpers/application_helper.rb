module ApplicationHelper
  def to_date(mytime)
    Date.parse(mytime).strftime("%B, %e")
  end
end
