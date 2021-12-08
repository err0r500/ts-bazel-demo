import koa from "koa";
import router from "koa-router";
import { Direct } from "@libs/direct";

const app = new koa();
const r = new router();

r.get("/", async (ctx:any, next:any) => {
    Direct.handle()
    ctx.body = "ok"
    await next();
})

app
  .use(r.routes())
  .use(r.allowedMethods());

app.listen(3000, () => {
    console.log("Server listening on 3000");
});
