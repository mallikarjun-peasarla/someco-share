function main() {
var query = "TYPE:sc\\:whitepaper"
var result = remote.call("/slingshot/search?term=" +
encodeURIComponent(query));
if (result.status == 200) {
model.items = JSON.parse(result).items;
}
}
main();