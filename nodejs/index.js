const express = require("express")


const app = express()


app.get("/",(req,res)=>{
    res.json("hello world")
})

app.get("/hello",(req,res)=>{
    res.json("hello")
})

app.listen(3001,()=>{
    console.log("server runing...");
})

