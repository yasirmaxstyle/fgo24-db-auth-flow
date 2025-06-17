```mermaid

---
title: ERD AUTH FLOW
---
erDiagram
direction LR
    client }o--o|registration : do
    registration |o--o{user : register
    user }o--o|login : do

client{
    string id_client PK
}

registration{
    string id_registration PK
    string email
    string password
    string id_client FK
}

login{
    string id_login PK
    string token
    string id_user FK
}

user{
    string id_user
    string id_registration FK
}