import pool from "./db.js";
import express from "express";
import cors from "cors";
const app = express();
app.use(express.json());
app.use(cors());

app.get("/users", async (req, res) => {
    try {
        console.log("users");
        
        const result = await pool.query("SELECT * FROM utilisateurs");
        res.json(result.rows);
    } catch (error) {
        console.log(error);
    }
});

app.get("/login", async (req, res) => {
    try{
        if(!req.query){
            res.json({message:"informations de connexion insuffisant !"})
            return;
        }
        const {identifiant, mdp} = req.query;
        
        if(!identifiant || !mdp){
            res.json({message:"informations de connexion insuffisant !"})
            return;
        }
        
        const result = await pool.query("SELECT * FROM utilisateurs WHERE (phone = $1 OR email = $1 OR username = $1) AND mdp = $2", [identifiant, mdp]);
        if(result.rows.length === 0){
            res.json({message:"Identifiant ou mot de passe incorrecte !", status:"error", code:""})
        }
        if(result.rows[0].etat === "inactif"){
            res.json({message:"Votre compte est inactif !", status:"error", code:"inactif"})
            return;
        }else if(result.rows[0].etat === "en attente"){
            res.json({message:"Votre compte est en attente de validation !", status:"error", code:"en_attente"})
            return;
        }
        res.json({data: result.rows[0], status:"success", code:"success"});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:""})
    }
})
app.post("/user", async (req, res) => {
    try{
        if(!req.body){
            res.json({message:"informations de connexion insuffisant !"});
            return;
        }
        const {nom, prenom, phone, email, username, mdp, categorie, adresse =""} = req.body;
        const date = new Date();
        const date_create = `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`;
        
        if(!nom || !prenom || !phone || !email || !username || !mdp || !categorie){
            res.json({message:"informations de connexion insuffisant !"});
            return;
        }
        const verif_user = await pool.query("SELECT * FROM utilisateurs WHERE username = $1", [username]);
        if(verif_user.rows.length > 0){
            res.json({message:"Utilisateur deja existant !", status:"error", code:"username_used"});
            return;
        }
        const verif_email = await pool.query("SELECT * FROM utilisateurs WHERE email = $1", [email]);
        if(verif_email.rows.length > 0){
            res.json({message:"Email deja existant !", status:"error", code:"email_used"});
            return;
        }
        const verif_phone = await pool.query("SELECT * FROM utilisateurs WHERE phone = $1", [phone]);
        if(verif_phone.rows.length > 0){
            res.json({message:"Telephone deja existant !", status:"error", code:"phone_used"});
            return;
        }
        const result = await pool.query("INSERT INTO utilisateurs (noms, phone, email, username, mdp, etat, type, adresse,date_create) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)", [nom + " " + prenom, phone, email, username, mdp, 'actif', categorie, adresse, date_create]);
        res.json({date:result.rows[0], status:"success", code:"success"});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:""});
    }
})
app.listen(5000, () => {
    console.log("Server is running on port 5000");
});