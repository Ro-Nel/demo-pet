-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-04-14 00:15:56.275

-- tables
-- Table: clinic
CREATE TABLE clinic (
    id_clinic serial  NOT NULL,
    id_geolocation int  NOT NULL,
    name_clinic varchar(100)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(50)  NOT NULL,
    city varchar(50)  NOT NULL,
    address varchar(225)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT clinic_pk PRIMARY KEY (id_clinic)
);

-- Table: customer_service
CREATE TABLE customer_service (
    id_customer_service serial  NOT NULL,
    id_service int  NOT NULL,
    id_owner int  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT customer_service_pk PRIMARY KEY (id_customer_service)
);

-- Table: discount
CREATE TABLE discount (
    id_discount serial  NOT NULL,
    chunk_name int  NOT NULL,
    percentage decimal(8,2)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT discount_pk PRIMARY KEY (id_discount)
);

-- Table: geolocation
CREATE TABLE geolocation (
    id_geolocation serial  NOT NULL,
    location varchar(50)  NOT NULL,
    latitude decimal(10,8)  NOT NULL,
    longitude decimal(10,8)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT geolocation_pk PRIMARY KEY (id_geolocation)
);

-- Table: h_clinic
CREATE TABLE h_clinic (
    id_clinic serial  NOT NULL,
    id_geolocation int  NOT NULL,
    name_clinic varchar(100)  NOT NULL,
    email varchar(50)  NOT NULL,
    phone_number varchar(50)  NOT NULL,
    city varchar(50)  NOT NULL,
    address varchar(225)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_clinic_pk PRIMARY KEY (id_clinic)
);

-- Table: h_medical_appointment
CREATE TABLE h_medical_appointment (
    id_medical_appointment serial  NOT NULL,
    id_clinic int  NOT NULL,
    id_customer int  NOT NULL,
    id_pet int  NOT NULL,
    appointment timestamp  NOT NULL,
    appointment_status int  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_medical_appointment_pk PRIMARY KEY (id_medical_appointment)
);

-- Table: h_owner
CREATE TABLE h_owner (
    id_owner serial  NOT NULL,
    id_person int  NOT NULL,
    user_o varchar(50)  NOT NULL,
    password_o varchar(50)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_owner_pk PRIMARY KEY (id_owner)
);

-- Table: h_payment
CREATE TABLE h_payment (
    id_payment serial  NOT NULL,
    id_payment_type int  NOT NULL,
    payment_name varchar(255)  NOT NULL,
    cost decimal(12,4)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_payment_pk PRIMARY KEY (id_payment)
);

-- Table: h_person
CREATE TABLE h_person (
    id_person serial  NOT NULL,
    id_geolocation int  NOT NULL,
    first_name varchar(100)  NOT NULL,
    last_name varchar(100)  NOT NULL,
    email varchar(100)  NOT NULL,
    date_of_birth date  NOT NULL,
    phone_number varchar(50)  NOT NULL,
    address varchar(255)  NOT NULL,
    city varchar(50)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_person_pk PRIMARY KEY (id_person)
);

-- Table: h_pet
CREATE TABLE h_pet (
    id_pet serial  NOT NULL,
    id_owner int  NOT NULL,
    name varchar(50)  NOT NULL,
    sex varchar(50)  NOT NULL,
    date_of_birth date  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_pet_pk PRIMARY KEY (id_pet)
);

-- Table: h_volunteers
CREATE TABLE h_volunteers (
    id_volunteer serial  NOT NULL,
    id_person int  NOT NULL,
    user_v varchar(50)  NOT NULL,
    password_v varchar(50)  NOT NULL,
    volunteer timestamp  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT h_volunteers_pk PRIMARY KEY (id_volunteer)
);

-- Table: medical_appointment
CREATE TABLE medical_appointment (
    id_medical_appointment serial  NOT NULL,
    id_clinic int  NOT NULL,
    id_owner int  NOT NULL,
    id_pet int  NOT NULL,
    appointment timestamp  NOT NULL,
    appointment_status int  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT medical_appointment_pk PRIMARY KEY (id_medical_appointment)
);

-- Table: owner
CREATE TABLE owner (
    id_owner serial  NOT NULL,
    id_person int  NOT NULL,
    user_o varchar(50)  NOT NULL,
    password_o varchar(50)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT uq_owner_user_o UNIQUE (user_o) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT owner_pk PRIMARY KEY (id_owner)
);

-- Table: payment
CREATE TABLE payment (
    id_payment serial  NOT NULL,
    id_payment_type int  NOT NULL,
    payment_name varchar(255)  NOT NULL,
    cost decimal(12,4)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT payment_pk PRIMARY KEY (id_payment)
);

-- Table: payment_Type
CREATE TABLE payment_Type (
    id_payment_type serial  NOT NULL,
    payment_type_name varchar(255)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT payment_Type_pk PRIMARY KEY (id_payment_type)
);

-- Table: person
CREATE TABLE person (
    id_person serial  NOT NULL,
    id_geolocation int  NOT NULL,
    first_name varchar(100)  NOT NULL,
    last_name varchar(100)  NOT NULL,
    email varchar(100)  NOT NULL,
    date_of_birth date  NOT NULL,
    phone_number varchar(50)  NOT NULL,
    address varchar(255)  NOT NULL,
    city varchar(50)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT person_pk PRIMARY KEY (id_person)
);

-- Table: pet
CREATE TABLE pet (
    id_pet serial  NOT NULL,
    id_owner int  NOT NULL,
    name varchar(50)  NOT NULL,
    sex varchar(50)  NOT NULL,
    date_of_birth date  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT pet_pk PRIMARY KEY (id_pet)
);

-- Table: pet_type
CREATE TABLE pet_type (
    id_pet_type serial  NOT NULL,
    id_pet int  NOT NULL,
    type_pet varchar(100)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT pet_type_pk PRIMARY KEY (id_pet_type)
);

-- Table: races
CREATE TABLE races (
    id_races serial  NOT NULL,
    id_pet_type int  NOT NULL,
    name char(100)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT races_pk PRIMARY KEY (id_races)
);

-- Table: schedule
CREATE TABLE schedule (
    id_schedule serial  NOT NULL,
    id_clinic int  NOT NULL,
    day_of_attention int  NOT NULL,
    start_time time  NOT NULL,
    end_time time  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(50)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT schedule_pk PRIMARY KEY (id_schedule)
);

-- Table: service
CREATE TABLE service (
    id_service serial  NOT NULL,
    id_discount int  NOT NULL,
    id_payment int  NOT NULL,
    id_clinic int  NOT NULL,
    name_service varchar(255)  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT service_pk PRIMARY KEY (id_service)
);

-- Table: specialties
CREATE TABLE specialties (
    id_specialties serial  NOT NULL,
    id_clinic int  NOT NULL,
    specialties_name varchar(255)  NOT NULL,
    species varchar(255)  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT specialties_pk PRIMARY KEY (id_specialties)
);

-- Table: volunteers
CREATE TABLE volunteers (
    id_volunteer serial  NOT NULL,
    id_person int  NOT NULL,
    user_v varchar(50)  NOT NULL,
    password_v varchar(50)  NOT NULL,
    volunteer timestamp  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT uq_volunteers_user_v UNIQUE (user_v) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT volunteers_pk PRIMARY KEY (id_volunteer)
);

-- Table: volunteers_Service
CREATE TABLE volunteers_Service (
    id_volunteers_service serial  NOT NULL,
    id_volunteer int  NOT NULL,
    id_service int  NOT NULL,
    status int  NOT NULL,
    tx_date timestamp  NOT NULL,
    tx_id_user int  NOT NULL,
    tx_host varchar(100)  NOT NULL,
    tx_update date  NOT NULL,
    CONSTRAINT volunteers_Service_pk PRIMARY KEY (id_volunteers_service)
);

-- foreign keys
-- Reference: Payment_Payment_Type (table: payment)
ALTER TABLE payment ADD CONSTRAINT Payment_Payment_Type
    FOREIGN KEY (id_payment_type)
    REFERENCES payment_Type (id_payment_type)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Specialties_clinic (table: specialties)
ALTER TABLE specialties ADD CONSTRAINT Specialties_clinic
    FOREIGN KEY (id_clinic)
    REFERENCES clinic (id_clinic)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Volunteers_Service_service (table: volunteers_Service)
ALTER TABLE volunteers_Service ADD CONSTRAINT Volunteers_Service_service
    FOREIGN KEY (id_service)
    REFERENCES service (id_service)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Volunteers_Service_volunteers (table: volunteers_Service)
ALTER TABLE volunteers_Service ADD CONSTRAINT Volunteers_Service_volunteers
    FOREIGN KEY (id_volunteer)
    REFERENCES volunteers (id_volunteer)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: clinic_geolocation (table: clinic)
ALTER TABLE clinic ADD CONSTRAINT clinic_geolocation
    FOREIGN KEY (id_geolocation)
    REFERENCES geolocation (id_geolocation)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: customer_service_owner (table: customer_service)
ALTER TABLE customer_service ADD CONSTRAINT customer_service_owner
    FOREIGN KEY (id_owner)
    REFERENCES owner (id_owner)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: customer_service_service (table: customer_service)
ALTER TABLE customer_service ADD CONSTRAINT customer_service_service
    FOREIGN KEY (id_service)
    REFERENCES service (id_service)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: medical_appointment_clinic (table: medical_appointment)
ALTER TABLE medical_appointment ADD CONSTRAINT medical_appointment_clinic
    FOREIGN KEY (id_clinic)
    REFERENCES clinic (id_clinic)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: medical_appointment_customer (table: medical_appointment)
ALTER TABLE medical_appointment ADD CONSTRAINT medical_appointment_customer
    FOREIGN KEY (id_owner)
    REFERENCES owner (id_owner)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: medical_appointment_pet (table: medical_appointment)
ALTER TABLE medical_appointment ADD CONSTRAINT medical_appointment_pet
    FOREIGN KEY (id_pet)
    REFERENCES pet (id_pet)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: owner_person (table: owner)
ALTER TABLE owner ADD CONSTRAINT owner_person
    FOREIGN KEY (id_person)
    REFERENCES person (id_person)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: person_geolocation (table: person)
ALTER TABLE person ADD CONSTRAINT person_geolocation
    FOREIGN KEY (id_geolocation)
    REFERENCES geolocation (id_geolocation)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pet_owner (table: pet)
ALTER TABLE pet ADD CONSTRAINT pet_owner
    FOREIGN KEY (id_owner)
    REFERENCES owner (id_owner)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: pet_type_pet (table: pet_type)
ALTER TABLE pet_type ADD CONSTRAINT pet_type_pet
    FOREIGN KEY (id_pet)
    REFERENCES pet (id_pet)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: races_pet_type (table: races)
ALTER TABLE races ADD CONSTRAINT races_pet_type
    FOREIGN KEY (id_pet_type)
    REFERENCES pet_type (id_pet_type)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: schedule_clinic (table: schedule)
ALTER TABLE schedule ADD CONSTRAINT schedule_clinic
    FOREIGN KEY (id_clinic)
    REFERENCES clinic (id_clinic)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: service_Descuentos (table: service)
ALTER TABLE service ADD CONSTRAINT service_Descuentos
    FOREIGN KEY (id_discount)
    REFERENCES discount (id_discount)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: service_Payment (table: service)
ALTER TABLE service ADD CONSTRAINT service_Payment
    FOREIGN KEY (id_payment)
    REFERENCES payment (id_payment)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: service_clinic (table: service)
ALTER TABLE service ADD CONSTRAINT service_clinic
    FOREIGN KEY (id_clinic)
    REFERENCES clinic (id_clinic)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: volunteers_person (table: volunteers)
ALTER TABLE volunteers ADD CONSTRAINT volunteers_person
    FOREIGN KEY (id_person)
    REFERENCES person (id_person)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

-- Table: perso
CREATE TABLE perso (
    id_person serial  NOT NULL,
    first_name varchar(100)  NOT NULL,
    last_name varchar(100)  NOT NULL,
    email varchar(100)  NOT NULL,
    date_of_birth date  NOT NULL,
    phone_number varchar(50)  NOT NULL,
    address varchar(255)  NOT NULL,
    city varchar(50)  NOT NULL,
    CONSTRAINT perso_pk PRIMARY KEY (id_person)
);