USE project;

ALTER TABLE profiles 
    ADD CONSTRAINT profiles_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users(id)
            ON DELETE CASCADE;

ALTER TABLE profiles 
    ADD CONSTRAINT profiles_address_id_fk
        FOREIGN KEY (address_id) REFERENCES address(id);        

ALTER TABLE accruals
    ADD CONSTRAINT accruals_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users(id)
            ON DELETE CASCADE;

        
ALTER TABLE payment_history 
    ADD CONSTRAINT payment_history_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users(id)
            ON DELETE CASCADE;
        
        
ALTER TABLE connections 
    ADD CONSTRAINT connections_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users(id)
            ON DELETE CASCADE;

        
ALTER TABLE connections 
    ADD CONSTRAINT connections_service_type_id_fk
        FOREIGN KEY (service_type_id) REFERENCES service_type(id);

ALTER TABLE connections 
    ADD CONSTRAINT connections_tariff_plan_id_fk
        FOREIGN KEY (tariff_plan_id) REFERENCES tariff_plan(id);    

ALTER TABLE tariff_plan 
    ADD CONSTRAINT tariff_plan_service_type_id_fk
        FOREIGN KEY (service_type_id) REFERENCES service_type(id);      
    
ALTER TABLE connections_tech 
    ADD CONSTRAINT connections_tech_connections_id_fk
        FOREIGN KEY (connections_id) REFERENCES connections(id);

    
ALTER TABLE connections_tech 
    ADD CONSTRAINT connections_tech_address_id_fk
        FOREIGN KEY (address_id) REFERENCES address(id);

    
ALTER TABLE connections_tech 
    ADD CONSTRAINT connections_tech_techbase_id_fk
        FOREIGN KEY (techbase_id) REFERENCES techbase(id);    

ALTER TABLE techbase 
    ADD CONSTRAINT techbase_address_id_fk
        FOREIGN KEY (address_id) REFERENCES address(id);       
    
    
-- индекс

CREATE INDEX connections_user_login_user_password_idx ON connections (user_login, user_password);
    
