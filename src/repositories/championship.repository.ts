import { ChampionshipDTO } from "../models/championship.dto";
import { Championship } from "../entities/championship.entity";
import { AppDataSource } from "../config/ormconfig";

class ChampionshipRepository {

    private repo = AppDataSource.getRepository(Championship);

    async getAllChampionships() {
        return await this.repo.find();
    }

    async getChampionshipById(id: number) {
        return await this.repo.findOneBy({id});
    }

    async createChampionship(championship: ChampionshipDTO) {
        try{
            await this.repo.save(championship);      
        }catch (error){
            console.log(error);
            return null;
        }

        return Championship;
    }

    async updateChampionshipById(id: number, championship: ChampionshipDTO) {
        try{
            let existingChampionship = await this.repo.findOneBy({id});

            if(!existingChampionship){
                return null;
            }

            // Replace the 'existingChampionship' with the values from 'championship'
            Object.assign(existingChampionship, championship);

            await this.repo.save(existingChampionship);
        }catch(error){
            console.log(error);
            return null;
        }        

        return Championship;
    }

    async deleteChampionshipById(id: number) {
        try {
            
            const existingChampionship = await this.repo.findOneBy({ id });
    
            if (!existingChampionship) {
                return null; 
            }
    
            await this.repo.remove(existingChampionship);    
        } catch (error) {
            console.log(error);
            return null;
        }

        return true;
    }

}

export default new ChampionshipRepository();