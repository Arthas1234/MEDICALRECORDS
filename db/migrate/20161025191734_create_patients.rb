class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
        t.integer :id_patient
        t.string :patient_firstname
        t.string :patient_middlename
        t.string :patient_lastname
        t.string :address
        t.text :reason_of_consultation
        t.date :date_of_birth
        
        t.timestamps
    end
  end
end
