ActiveAdmin.register AdmissionRequest do




batch_action :destroy, false

      filter :name
      filter :lastname
      filter :document
      filter :grade
      filter :gender
      filter :status,  :as => :select, :collection => [ 'new', 'inscrito', 'admitido', 'matricula pendiente', 'matriculado']

actions :all, :except => [:new]

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :status, :name, :grade
index do
	column :user_id
    column :name
    column :lastname
    column :document
    column :grade
    column :gender
    column :status
    actions
end

form do |f|
    inputs 'Details' do
      input :name
      input :lastname
      input :document
      input :grade
      input :gender
      input :status,  :as => :select, :collection => [ 'new', 'inscrito', 'admitido', 'matricula pendiente', 'matriculado']
      actions
    end
    
   
  end

end
