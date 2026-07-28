import pool from "./db.js";
import express from "express";
import cors from "cors";
import path from "path";
import { addArticle, getArticle, getDossier, getUser, setEtatAttribut, suivreDossier, updateProfile } from "./queries.js";
import multer from "multer";
import { fileURLToPath } from 'url';

// recréer __filename et __dirname
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const upload = multer({dest:"uploads"});
const app = express();
app.use(express.json());
app.use(cors());

app.get("/users", async (req, res) => {
    try {
        const result = await pool.query("SELECT * FROM utilisateurs");
        res.json({data: result.rows, status:"success", code:"success"});
    } catch (error) {
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:""})
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
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error: error});
    }
})

app.get("/categorie_incident", async (req, res) => {
    try{
        const result = await pool.query("SELECT * FROM categorie_incident");
        res.json({data: result.rows, status:"success", code:"success"});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error: error});
    }
})
app.post("/add_categorie", async (req, res) => {
    try{
        const {designation, niveau} = req.body;
        const date = new Date();
        const date_create = `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()}`;
        const verif = await pool.query("SELECT * FROM categorie_incident WHERE designation=$1", [designation]);
        if(verif.rowCount > 0){
            res.json({status:"error", code:"designation_used", message:"Cette categorie d'incident existe !"});
            return;
        }
        const add = await pool.query("INSERT INTO categorie_incident(designation, date, etat, niveau) VALUES($1, $2, $3, $4)", [designation, date_create, "actif", niveau])
        res.json({data: add.rows[0], status:"success", code:"success"});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error: error});
    }
})

app.get("/get_categorie", async (req, res) => {
    try{
        const types = await pool.query("SELECT * FROM categorie_incident WHERE etat='actif'");
        res.json({status:"success", data:types.rows});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"error", error});
    }
})

app.post("/add_signalement", async (req, res) => {
    try{
        const {type,date,lieu,description,anonymat,contact,piecesJointe,population,} = req.body;
        const date_create = new Date().toISOString().split('T')[0];
        const data = await pool.query("INSERT INTO incident(categorieid, lieu, description, date_incident, population_id, date_create, status, anonyme) VALUES($1, $2, $3, $4, $5, $6, $7, $8)", [parseInt(type), lieu, description, date, 0, date_create, "actif", anonymat]);
        res.json({data: data.rows[0], status:"success", code:"success"});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error: error});
    }
})

app.get("/getincident", async (req, res) => {
    try{
        const datas = await getDossier({userid: req.query.userid});
        res.json({...datas});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error});
    }
})

app.post("/suivredossier", async (req, res) => {
    const {userid, dossierid} = req.body;
    const reponse = await suivreDossier({userid, dossierid});
    res.json({...reponse});
});

app.post("/set_etat_attribut", async (req, res) => {
    const {attribuerid, status} = req.body;
    const reponse = await setEtatAttribut({attribuerid, status});
    res.json({...reponse});
});

app.post("/add_article", upload.single("file"), async (req, res) => {
    try{
        const {titre, contenu, userid} = req.body;
        const piecesJointe = req.file.filename;
        const typepiece = req.file.mimetype;
        const reponse = await addArticle({titre, contenu, piecesJointe, typepiece, userid});
        res.json({...reponse});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error});
    }
})

app.get("/getarticle", async (req, res) => {
    try{
        const datas = await getArticle({articleid: req.query.articleid, filter: req.query.filter});
        res.json({...datas});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error});
    }
})

app.get("/getuser", async (req, res) => {
    try{
        const datas = await getUser({username: req.query.username});
        res.json({...datas});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error});
    }
})

app.post("/updateprofile", async (req, res) => {
    try{
        const {username, noms, adresse, phone, email, password, oldPassword} = req.body;
        const reponse = await updateProfile({username, noms, adresse, phone, email, password, oldPassword});
        res.json({...reponse});
    }catch(error){
        console.log(error);
        res.json({message:"Une erreur s'est produite !", status:"error", code:"", error});
    }
})

app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.listen(5001, () => {
    console.log("Server is running on port 5001");
});

