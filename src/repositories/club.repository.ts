import { ClubDTO } from "../models/club.dto";
import { Club } from "../entities/club.entity";
import { AppDataSource } from "../config/ormconfig";

class ClubRepository {

    private repo = AppDataSource.getRepository(Club);

    async getAllClubs() {
        return await this.repo.find();
    }

    async getClubById(id: number) {
        return await this.repo.findOneBy({id});
    }

    async createClub(club: ClubDTO) {
        try{
            await this.repo.save(club);      
        }catch (error){
            console.log(error);
            return null;
        }

        return Club;
    }

    async updateClubById(id: number, club: ClubDTO) {
        try{
            let existingClub = await this.repo.findOneBy({id});

            if(!existingClub){
                return null;
            }

            // Replace the 'existingClub' with the values from 'Club'
            Object.assign(existingClub, club);

            await this.repo.save(existingClub);
        }catch(error){
            console.log(error);
            return null;
        }        

        return Club;
    }

    async deleteClubById(id: number) {
        try {
            
            const existingClub = await this.repo.findOneBy({ id });
    
            if (!existingClub) {
                return null; 
            }
    
            await this.repo.remove(existingClub);    
        } catch (error) {
            console.log(error);
            return null;
        }

        return true;
    }

}

export default new ClubRepository();