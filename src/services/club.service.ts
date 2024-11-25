import { HttpContentModel } from "../models/http-content-model";
import { ClubDTO } from "../models/club.dto";
import ClubRepository from "../repositories/club.repository";
import { StatusCode } from "../utils/status-codes";

const response = HttpContentModel.getInstance(); 

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class ClubService {

    async getClubsService() {
        const data = await ClubRepository.getAllClubs();

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async getClubByIdService(id: number) {
        const data = await ClubRepository.getClubById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async createClubService(club: ClubDTO) {

        if(Object.keys(club).length !== 0) {
            const data = await ClubRepository.createClub(club);

            response.status = data ? StatusCode.OK : StatusCode.InternalServerError; 
            response.body = data ?? { message: "internal server error" }; // TODO: Fix: "message" is not being displayed when "data" content is null
        }else{
            response.status = StatusCode.BadRequest;
            response.body = { message: "bad request"};
        }
        
        return response;
    }

    async updateClubByIdService(id: number, club: ClubDTO) {
        const data = await ClubRepository.getClubById(id);

        if(data){
            await ClubRepository.updateClubById(id, club);
            response.status = StatusCode.OK;
            response.body = { message: "updated"};
        }else{
            response.status = StatusCode.NotFound;
            response.body = { message: "not found"};
        }    

        return response;
    }

    async deleteClubByIdService(id: number) {
        const data = await ClubRepository.deleteClubById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no content found" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

}

export default new ClubService();