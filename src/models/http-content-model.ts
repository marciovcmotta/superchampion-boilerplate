export class HttpContentModel {
    private static instance: HttpContentModel;
    status: number;
    body: any;

    private constructor() { 
        this.status = 0;
        this.body = null; 
    }

    public static getInstance(): HttpContentModel {
        if (!HttpContentModel.instance) {
            HttpContentModel.instance = new HttpContentModel();
        }

        return HttpContentModel.instance;
    }
}