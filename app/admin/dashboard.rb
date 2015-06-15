ActiveAdmin.register_page "Dashboard" do

    
  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do

     column do
        panel "recent admission requests" do
          table_for AdmissionRequest.order("name desc").limit(5).each do |admissionr|
            column :user_id
            column :name
            column :lastname
            column :document
            column :grade
            column :gender
            column :status
          end
          strong { link_to "view all admission requests", admin_admission_requests_path}
        end
      end
    end
    
  end # content

end
