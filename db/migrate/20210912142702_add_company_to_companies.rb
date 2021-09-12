class AddCompanyToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :fee, :integer, comment: "手数料"
    add_column :companies, :o_fee, :integer, comment: "事務手数料"
    add_column :companies, :closing, :string, comment: "締日"
    add_column :companies, :after, :string, comment: "翌or当月"
    add_column :companies, :payment, :string, comment: "振込日"
    add_column :companies, :person, :string, comment: "担当"
    add_column :companies, :p_tel, :string, comment: "電話番号"
    add_column :companies, :p_tel2, :string, comment: "電話番号2"
    add_column :companies, :p_fax, :string, comment: "FAX"
    add_column :companies, :p_email, :string, comment: "アドレス"
    add_column :companies, :remarks, :text, comment: "備考"
    
  end
end
