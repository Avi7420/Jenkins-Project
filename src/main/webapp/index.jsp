<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
    --bg:#f4f7fb;
    --primary:#0f172a;
    --accent:#6366f1;
    --muted:#64748b;
    --radius:16px;
}

/* GLOBAL */
body{
    margin:0;
    font-family:Inter;
    background:linear-gradient(180deg,#eef2ff,#f8fafc);
    color:var(--primary);
}
.container{max-width:1200px;margin:auto;padding:20px}

/* HEADER */
header{
    position:sticky;top:0;
    background:rgba(255,255,255,0.7);
    backdrop-filter:blur(12px);
    display:flex;justify-content:space-between;
    padding:15px 30px;
}
.brand{font-weight:700;font-size:22px}
.brand span{color:var(--accent)}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
    color:white;
    background:linear-gradient(120deg,#0f172a,#6366f1);
}
.hero h1{font-size:42px;margin-bottom:10px}

/* BUTTON */
.btn{
    padding:12px 20px;
    border:none;
    border-radius:30px;
    background:var(--accent);
    color:white;
    cursor:pointer;
}

/* GRID */
.grid{display:grid;gap:20px}
.products{grid-template-columns:repeat(auto-fit,minmax(250px,1fr))}

/* PRODUCT */
.product{
    background:white;
    border-radius:var(--radius);
    overflow:hidden;
    transition:.3s;
}
.product:hover{transform:translateY(-6px)}
.product img{width:100%;height:200px;object-fit:cover}
.product-body{padding:15px}
.price{color:var(--accent);font-weight:700}

/* FOOTER */
footer{
    background:#0f172a;
    color:#cbd5f5;
    text-align:center;
    padding:20px;
}
</style>
</head>

<body>

<header>
    <div class="brand">Nexus<span>Shop</span></div>
    <button class="btn">Cart (<span id="cartCount">0</span>)</button>
</header>

<section class="hero">
    <h1>Modern Shopping Experience</h1>
    <p>Clean UI with smooth interactions</p>
</section>

<div class="container">
    <h2>Products</h2>
    <div class="grid products" id="products"></div>
</div>

<footer>
    © 2026 NexusShop
</footer>

<script>
const PRODUCTS=[
{title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{title:"MacBook Pro",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:199,img:"https://images.unsplash.com/photo-1518441902110"},
{title:"Sneakers",price:150,img:"https://images.unsplash.com/photo-1542291026"}
];

let cart=0;

function render(){
const container=document.getElementById("products");
container.innerHTML="";
PRODUCTS.forEach((p,i)=>{
container.innerHTML+=`
<div class="product">
<img src="${p.img}">
<div class="product-body">
<h4>${p.title}</h4>
<div class="price">$${p.price}</div>
<button class="btn" onclick="add(${i})">Add</button>
</div>
</div>`;
});
}

function add(){
cart++;
document.getElementById("cartCount").innerText=cart;
}

render();
</script>

</body>
</html>
