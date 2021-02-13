class AuditLog < ApplicationRecord
  belongs_to :user
  validates_presence_of :user_id, :start_date, :status
  after_initialize :set_defaults

  private

  def set_defaults  
    self.start_date ||= Date.today - 6.days
  end
end
