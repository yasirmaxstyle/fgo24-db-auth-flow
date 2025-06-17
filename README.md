```mermaid

---
title: ERD AUTH FLOW
---
erDiagram
direction LR
    client }o--o|registration : do
    client }o--o|login : do

client{
    string id_client PK
    string id_registration FK
    string id_login FK
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
    string id_client FK
}