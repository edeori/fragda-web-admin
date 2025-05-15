-- Séma létrehozása, ha nem létezik
CREATE SCHEMA IF NOT EXISTS fragda_admin;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Tábla létrehozása az új sémában
CREATE TABLE IF NOT EXISTS fragda_admin.order (
    order_number VARCHAR PRIMARY KEY,
    customer_name TEXT NOT NULL,
    email TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    order_status TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS fragda_admin.order_item (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    item TEXT NOT NULL,
    details TEXT NOT NULL
);
