#READ ALL
SELECT * FROM doctors

#READ ONE
airbnb.com/flats/534
SELECT * FROM flats
WHERE id = 534

#READ ONE ON OTHER COLUMN THAN ID
github.com/users/l-laurencich
SELECT * FROM users
WHERE username = "l-laurencich"

#CREATE
INSERT INTO doctors (name, age, specialty)
VALUES ("Meredith Grey", 38, "General Surgery")

#UPDATE
UPDATE doctors SET age = 39, specialty = "Heart Surgery"
WHERE id = 3

#DELETE
DELETE FROM doctors
WHERE id = 2

# DELETES ALL DENTISTS & ALL CARDIOLOGISTS
DELETE FROM doctors
WHERE specialty = "Dentist"
OR specialty = "Cardiologist" 

# DELETES ALL DENTISTS AND ALL DOCTORS THAT ARE 38 YO
DELETE FROM doctors
WHERE specialty = "Dentist"
OR age = 38 

# DELETES ALL 38YO DENTISTS
DELETE FROM doctors
WHERE specialty = "Dentist"
AND age = 38 
