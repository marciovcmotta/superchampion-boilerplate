import { PlayerDTO } from "../models/player.dto";
import { Player } from "../entities/player.entity";
import { AppDataSource } from "../config/ormconfig";

class PlayerRepository {

    private repo = AppDataSource.getRepository(Player);

    async getAllPlayers() {
        return await this.repo.find();
    }

    async getPlayerById(id: number) {
        return await this.repo.findOneBy({id});
    }

    async createPlayer(player: PlayerDTO) {
        try{
            await this.repo.save(player);      
        }catch (error){
            console.log(error);
            return null;
        }

        return Player;
    }

    async updatePlayerById(id: number, player: PlayerDTO) {
        try{
            let existingPlayer = await this.repo.findOneBy({id});

            if(!existingPlayer){
                return null;
            }

            // Replace the 'existingPlayer' with the values from 'player'
            Object.assign(existingPlayer, player);

            await this.repo.save(existingPlayer);
        }catch(error){
            console.log(error);
            return null;
        }        

        return Player;
    }

    async deletePlayerById(id: number) {
        try {
            
            const existingPlayer = await this.repo.findOneBy({ id });
    
            if (!existingPlayer) {
                return null; 
            }
    
            await this.repo.remove(existingPlayer);    
        } catch (error) {
            console.log(error);
            return null;
        }

        return true;
    }

}

export default new PlayerRepository();