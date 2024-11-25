import {Request, Response} from "express";
import ChampionshipService from "../services/championship.service";

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class ChampionshipController {

    async getChampionships(req: Request, res: Response) {
        const httpResponse = await ChampionshipService.getChampionshipService();
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async getChampionshipById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await ChampionshipService.getChampionshipByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async createChampionship(req: Request, res: Response) {
        const bodyValue = req.body;
        const httpResponse = await ChampionshipService.createChampionshipService(bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async updateChampionshipById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const bodyValue = req.body;
        const httpResponse = await ChampionshipService.updateChampionshipByIdService(id, bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async deleteChampionshipById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await ChampionshipService.deleteChampionshipByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

}

export default new ChampionshipController();

