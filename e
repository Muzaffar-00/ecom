<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Shop</title>

<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #f2f2f2;
}

/* HEADER */
header {
  background: #222;
  color: white;
  padding: 15px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

/* PRODUCTS GRID */
.products {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  gap: 15px;
  padding: 15px;
}

/* PRODUCT CARD */
.card {
  background: white;
  padding: 10px;
  text-align: center;
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.card img {
  width: 100%;
  height: 130px;
  object-fit: cover;
  border-radius: 5px;
}

/* BUTTON */
button {
  background: green;
  color: white;
  border: none;
  padding: 8px;
  width: 100%;
  margin-top: 5px;
  cursor: pointer;
  border-radius: 4px;
}

button:hover {
  background: darkgreen;
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
  {
    name: "Laptop",
    price: 800,
    img: "https://images.unsplash.com/photo-1517336714739-489689fd1ca8?auto=format&fit=crop&w=600"
  },
  {
    name: "Headphones",
    price: 120,
    img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600"
  },
  {
    name: "Smartphone",
    price: 650,
    img: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600"
  }
];

let cartCount = 0;

const container = document.getElementById("products");

function addToCart(productName) {
  cartCount++;
  document.getElementById("cart").textContent = cartCount;
}

// Render products safely
items.forEach(item => {
  const card = document.createElement("div");
  card.className = "card";

  const img = document.createElement("img");
  img.src = item.img;
  img.alt = item.name;

  const title = document.createElement("h4");
  title.textContent = item.name;

  const price = document.createElement("p");
  price.textContent = "₹" + item.price;

  const btn = document.createElement("button");
  btn.textContent = "Add to Cart";
  btn.addEventListener("click", () => addToCart(item.name));

  card.appendChild(img);
  card.appendChild(title);
  card.appendChild(price);
  card.appendChild(btn);

  container.appendChild(card);
});
</script>

</body>
</html>
