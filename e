<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopEasy E-Commerce</title>

<style>
/* ===== GLOBAL ===== */
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #f5f5f5;
}

/* ===== HEADER ===== */
header {
  background: #111;
  color: white;
  padding: 15px 30px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

/* ===== HERO ===== */
.hero {
  background: linear-gradient(to right, #007bff, #00c6ff);
  color: white;
  text-align: center;
  padding: 30px;
}

/* ===== PRODUCTS GRID ===== */
.products {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
  padding: 20px;
}

/* ===== PRODUCT CARD ===== */
.product {
  background: white;
  border-radius: 10px;
  padding: 15px;
  text-align: center;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  transition: 0.3s;
}

.product:hover {
  transform: scale(1.03);
}

.product img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  border-radius: 10px;
}

/* ===== BUTTON ===== */
button {
  background: #28a745;
  color: white;
  border: none;
  padding: 10px;
  width: 100%;
  margin-top: 10px;
  border-radius: 5px;
  cursor: pointer;
}

button:hover {
  background: #218838;
}

/* ===== FOOTER ===== */
footer {
  text-align: center;
  padding: 15px;
  background: #111;
  color: white;
  margin-top: 20px;
}
</style>
</head>

<body>

<header>
  <h1>🛒 ShopEasy</h1>
  <div>Cart: <span id="cart">0</span></div>
</header>

<div class="hero">
  <h2>Welcome to ShopEasy</h2>
  <p>Best Products at Affordable Prices</p>
</div>

<main>
  <div class="products" id="products"></div>
</main>

<footer>
  <p>© 2026 ShopEasy. All Rights Reserved.</p>
</footer>

<script>
// ===== PRODUCT DATA =====
const products = [
  {
    name: "Laptop",
    price: 800,
    image: "https://images.unsplash.com/photo-1517336714739-489689fd1ca8"
  },
  {
    name: "Headphones",
    price: 120,
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e"
  },
  {
    name: "Smartphone",
    price: 650,
    image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9"
  },
  {
    name: "Smart Watch",
    price: 200,
    image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30"
  }
];

let cartCount = 0;

// ===== LOAD PRODUCTS =====
const productContainer = document.getElementById("products");

products.forEach(product => {
  const div = document.createElement("div");
  div.classList.add("product");

  div.innerHTML = `
    <img src="${product.image}" alt="${product.name}">
    <h3>${product.name}</h3>
    <p>₹${product.price}</p>
    <button onclick="addToCart('${product.name}')">Add to Cart</button>
  `;

  productContainer.appendChild(div);
});

// ===== ADD TO CART =====
function addToCart(name) {
  cartCount++;
  document.getElementById("cart").innerText = cartCount;
  alert(name + " added to cart!");
}
</script>

</body>
</html>
