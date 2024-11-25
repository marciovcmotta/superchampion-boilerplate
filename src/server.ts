import 'reflect-metadata';
import createApp from "./app";
import * as dotenv from "dotenv";
import { AppDataSource } from "./config/ormconfig";

dotenv.config();

async function startServer() {
    try {
        await AppDataSource.initialize().then(async () => {
            console.log("🔥 Database connected successfully!");

            const server = createApp();

            const port = process.env.PORT || 5000;

            server.listen(port, () => {
                console.log(`🔥 Server running at port: ${port}`);
            })
        });    
    }catch (error) {
        console.error("Error initializing database connection:", error);
    }
}

startServer();

