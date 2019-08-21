class AddFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :personal_mail, :string, default: ""
    add_column :users, :corporate_mail, :string, default: ""
    add_column :users, :phone_number, :string, default: ""
    add_column :users, :linkedin_url, :string, default: ""
    add_column :users, :slack_account, :string, default: ""
    add_column :users, :time_zone, :string, default: ""
    add_column :users, :onboarding_progress, :string, default: ""
    add_column :users, :location, :string, default: ""
    add_column :users, :job_title, :string, default: ""
    add_column :users, :department, :string, default: ""
    add_reference :users, :team, foreign_key: true
    add_reference :users, :hierarchy_rank, foreign_key: true
    add_column :users, :contract_status, :string, default: ""
    add_column :users, :contract_pdf, :string, default: ""
    add_column :users, :avatar, :string, default: ""
    add_column :users, :hobby_1, :string, default: ""
    add_column :users, :hobby_2, :string, default: ""
    add_column :users, :hobby_3, :string, default: ""
    add_reference :users, :company, foreign_key: true
    add_column :users, :rules_reglementation_pdf, :string
    add_column :users, :arrival_at, :string
  end
end
