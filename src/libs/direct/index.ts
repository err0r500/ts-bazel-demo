import { Transitive } from "@libs/transitive";

export class Direct {
    public static handle() : void {
        console.log("direct")
        Transitive.handle()
    }
}
