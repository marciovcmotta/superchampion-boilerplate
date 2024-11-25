import {Request, Response} from "express";
import ClubService from "../services/club.service";

// TODO: break this class into several others so that each class has only one responsibility, respecting the "S" of the SOLID principle;
class ClubController {

    async getClubs(req: Request, res: Response) {
        const httpResponse = await ClubService.getClubsService();
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async getClubById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await ClubService.getClubByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async createClub(req: Request, res: Response) {
        const bodyValue = req.body;
        const httpResponse = await ClubService.createClubService(bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async updateClubById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const bodyValue = req.body;
        const httpResponse = await ClubService.updateClubByIdService(id, bodyValue);
        res.status(httpResponse.status).json(httpResponse.body);
    }

    async deleteClubById(req: Request, res: Response) {
        const id = parseInt(req.params.id);
        const httpResponse = await ClubService.deleteClubByIdService(id);
        res.status(httpResponse.status).json(httpResponse.body);
    }

}

export default new ClubController();

