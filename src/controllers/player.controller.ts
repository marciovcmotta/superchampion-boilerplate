import {Request, Response} from "express";
import PlayerService from "../services/player.service";

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class PlayerController {

    async getPlayers(req: Request, res: Response) {
        const httpResponse = await PlayerService.getPlayerService();
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async getPlayerById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await PlayerService.getPlayerByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async createPlayer(req: Request, res: Response) {
        const bodyValue = req.body;
        const httpResponse = await PlayerService.createPlayerService(bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async updatePlayerById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const bodyValue = req.body;
        const httpResponse = await PlayerService.updatePlayerByIdService(id, bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async deletePlayerById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await PlayerService.deletePlayerByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

}

export default new PlayerController();

