<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Shop</title>

<style>
body {
  margin: 0;
  font-family: Arial;
  background: #f2f2f2;
}

header {
  background: #222;
  color: white;
  padding: 15px;
  display: flex;
  justify-content: space-between;
}

.products {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  gap: 15px;
  padding: 15px;
}

.card {
  background: white;
  padding: 10px;
  text-align: center;
  border-radius: 8px;
}

.card img {
  width: 100%;
  height: 120px;
  object-fit: cover;
  border-radius: 5px;
}

button {
  background: green;
  color: white;
  border: none;
  padding: 8px;
  width: 100%;
  margin-top: 5px;
}
</style>
</head>

<body>

<header>
  <h3>Simple Shop</h3>
  <div>Cart: <span id="cart">0</span></div>
</header>

<div class="products" id="products"></div>

<script>
const items = [
  { name: "Laptop", price: 800, img: "https://images.unsplash.com/photo-1517336714739-489689fd1ca8" },
  { name: "Headphones", price: 120, img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e" },
  { name: "Phone", price: 650, img: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9" }
];

let cart = 0;

const container = document.getElementById("products");

items.forEach(item => {
  container.innerHTML += `
    <div class="card">
      <img src="${item.img}">
      <h4>${item.name}</h4>
      <p>₹${item.price}</p>
      <button onclick="addCart('${item.name}')">Add</button>
    </div>
  `;
});

function addCart(name) {
  cart++;
  document.getElementById("cart").innerText = cart;
}
</script>

</body>
</html>
