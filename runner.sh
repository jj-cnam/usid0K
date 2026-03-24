# chmod +X runner.sh
docker pull postgres:16
# cd lib/images
docker compose up -d

# docker exec -it postgres_db sql
docker exec -it postgres_db psql -U admin -d MEDAS

CREATE TABLE agences (
Num_Agence INT PRIMARY KEY,
Nom_Agence VARCHAR(255),
Ville_Agence VARCHAR(255),
Actif_Agence BOOLEAN,
taux_Actif FLOAT,
total_Actif FLOAT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
