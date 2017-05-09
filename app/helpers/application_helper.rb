module ApplicationHelper
  def is_current_account_admin()
    if account_signed_in? && current_account.admin
      return true
    else
      return false
    end
  end
end
