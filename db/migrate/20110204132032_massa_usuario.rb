class MassaUsuario < ActiveRecord::Migration
  def self.up
  # User.create(:id => 1, :email => 'gledson_net@hotmail.com', :encrypted_password => '$2a$10$vI2yafZqL.AAonpoygOfvOWp237kgBTJFbdMU2AtuDqTSBAMtCyTq', :password_salt => '$2a$10$hnR4CSGfkHVkbK7z5DCao.', :reset_password_token => 'KW9FpHSCKLQWBoBy8S5y', :remember_token => '', :remember_created_at => '', :sign_in_count => 0, :current_sign_in_at => '2011-01-26 18:40:45.394816', :last_sign_in_at => '2011-01-26 18:38:37.896382', :current_sign_in_ip => '127.0.0.1', :last_sign_in_ip => '127.0.0.1', :created_at => '2010-12-22 14:46:44.742662', :updated_at => '2011-01-26 18:40:45.395443', :username => 'gledson', :nome => 'Gledson Cruz', :role => 'Usuario'); 

   #User.create(:id => 2, :email => 'gledson.cruz@gmail.com', :encrypted_password => '$2a$10$hnR4CSGfkHVkbK7z5DCao.H1jSqVozoORipYjYnLyn4xr.8EJ9T5y', :password_salt => '$2a$10$hnR4CSGfkHVkbK7z5DCao.', :reset_password_token => 'KW9FpHSCKLQWBoBy8S5y', :remember_token => '', :remember_created_at => '', :sign_in_count => 0, :current_sign_in_at => '2011-01-26 18:40:45.394816', :last_sign_in_at => '2011-01-26 18:38:37.896382', :current_sign_in_ip => '127.0.0.1', :last_sign_in_ip => '127.0.0.1', :created_at => '2010-12-22 14:46:44.742662', :updated_at => '2011-01-26 18:40:45.395443', :username => 'admin', :nome => 'Administrador', :role => 'Administrador');
execute <<-SQL

INSERT INTO users VALUES(1,'gledson_net@hotmail.com','$2a$10$hnR4CSGfkHVkbK7z5DCao.H1jSqVozoORipYjYnLyn4xr.8EJ9T5y','$2a$10$hnR4CSGfkHVkbK7z5DCao.','KW9FpHSCKLQWBoBy8S5y',NULL,NULL,64,'2011-01-26 18:40:45.394816','2011-01-26 18:38:37.896382','127.0.0.1','127.0.0.1','2010-12-22 14:46:44.742662','2011-01-26 18:40:45.395443','gledson','Gledson Cruz','Usuario');
SQL
execute <<-SQL
INSERT INTO users VALUES(2,'gledson.cruz@gmail.com','$2a$10$0igAYS2YhFO29fy8bUVT/eH1kDwn86A9QEey3j9Iy.YK8vb/JqgKS','$2a$10$0igAYS2YhFO29fy8bUVT/e','MA4OvWZhcaXddMPtVY8j',NULL,NULL,19,'2011-01-26 18:39:37.593591','2011-01-26 18:38:22.282189','127.0.0.1','127.0.0.1','2010-12-22 15:02:11.770673','2011-01-26 18:43:31.916723','admin','Administrador','Administrador');

SQL

  end

  def self.down
    User.delete_all
  end
end
