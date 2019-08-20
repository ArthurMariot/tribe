class AddFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :personal_mail, :string
    add_column :users, :corporate_mail, :string
    add_column :users, :phone_number, :string
    add_column :users, :linkedin_url, :string
    add_column :users, :slack_account, :string
    add_column :users, :time_zone, :string
    add_column :users, :onboarding_progress, :string
    add_column :users, :location, :string
    add_column :users, :job_title, :string
    add_column :users, :department, :string
    add_reference :users, :team, foreign_key: true
    add_reference :users, :hierarchy_rank, foreign_key: true
    add_column :users, :contract_status, :string
    add_column :users, :contract_pdf, :string
    add_column :users, :avatar, :string
    add_column :users, :hobby_1, :string
    add_column :users, :hobby_2, :string
    add_column :users, :hobby_3, :string
    add_reference :users, :company, foreign_key: true
    add_column :users, :rules_reglementation_pdf, :string
    add_column :users, :arrival_at, :string
  end
end
