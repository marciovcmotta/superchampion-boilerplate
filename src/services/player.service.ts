import { HttpContentModel } from "../models/http-content-model";
import { PlayerDTO } from "../models/player.dto";
import PlayerRepository from "../repositories/player.repository";
import { StatusCode } from "../utils/status-codes";

const response = HttpContentModel.getInstance(); 

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class PlayerService {

    async getPlayerService() {
        const data = await PlayerRepository.getAllPlayers();

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async getPlayerByIdService(id: number) {
        const data = await PlayerRepository.getPlayerById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no Content" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

    async createPlayerService(player: PlayerDTO) {

        if(Object.keys(player).length !== 0) {
            const data = await PlayerRepository.createPlayer(player);

            response.status = data ? StatusCode.OK : StatusCode.InternalServerError; 
            response.body = data ?? { message: "internal server error" }; // TODO: Fix: "message" is not being displayed when "data" content is null
        }else{
            response.status = StatusCode.BadRequest;
            response.body = { message: "bad request"};
        }
        
        return response;
    }

    async updatePlayerByIdService(id: number, player: PlayerDTO) {
        const data = await PlayerRepository.getPlayerById(id);

        if(data){
            await PlayerRepository.updatePlayerById(id, player);
            response.status = StatusCode.OK;
            response.body = { message: "updated"};
        }else{
            response.status = StatusCode.NotFound;
            response.body = { message: "not found"};
        }    

        return response;
    }

    async deletePlayerByIdService(id: number) {
        const data = await PlayerRepository.deletePlayerById(id);

        response.status = data ? StatusCode.OK : StatusCode.NoContent; 
        response.body = data ?? { message: "no content found" }; // TODO: Fix: "message" is not being displayed when "data" content is null

        return response;
    }

}

export default new PlayerService();