const username = "user";
const password = "pass";

const authString = `${username}:${password}`;
const rpcauth = Buffer.from(authString).toString("base64");

console.log(`rpcauth=user:${rpcauth}`);
