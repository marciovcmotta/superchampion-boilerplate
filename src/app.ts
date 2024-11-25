import express from "express";
import router from "./routers";
import cors from "cors";

function createApp(){
    const app = express();

    const corsOption = {
        origin: "*",
        methods: ["GET", "POST", "PATCH", "DELETE"]
    }
    
    app.use(express.json());
    app.use("/", router);
    app.use(cors(corsOption));

    return app;
}

export default createApp;