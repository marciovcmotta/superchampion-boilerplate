import { HttpContentModel } from "../models/http-content-model";
import { ChampionshipDTO } from "../models/championship.dto";
import ChampionshipRepository from "../repositories/championship.repository";
import { StatusCode } from "../utils/status-codes";

const response = HttpContentModel.getInstance(); 

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class ChampionshipService {

    async getChampionshipService() {
        const data = await ChampionshipRepository.getAllChampionships();

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async getChampionshipByIdService(id: number) {
        const data = await ChampionshipRepository.getChampionshipById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async createChampionshipService(championship: ChampionshipDTO) {

        if(Object.keys(championship).length !== 0) {
            const data = await ChampionshipRepository.createChampionship(championship);

            response.status = data ? StatusCode.OK : StatusCode.InternalServerError; 
            response.body = data ?? { message: "internal server error" }; // TODO: Fix: "message" is not being displayed when "data" content is null
        }else{
            response.status = StatusCode.BadRequest;
            response.body = { message: "bad request"};
        }
        
        return response;
    }

    async updateChampionshipByIdService(id: number, championship: ChampionshipDTO) {
        const data = await ChampionshipRepository.getChampionshipById(id);

        if(data){
            await ChampionshipRepository.updateChampionshipById(id, championship);
            response.status = StatusCode.OK;
            response.body = { message: "updated"};
        }else{
            response.status = StatusCode.NotFound;
            response.body = { message: "not found"};
        }    

        return response;
    }

    async deleteChampionshipByIdService(id: number) {
        const data = await ChampionshipRepository.deleteChampionshipById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no content found" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

}

export default new ChampionshipService();