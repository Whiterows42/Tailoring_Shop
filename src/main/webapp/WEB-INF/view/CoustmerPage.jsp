<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<html>
<head>
<title>Tailoring Shop</title>
<link rel="icon" href="Self.svg" type="image/svg+xml" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap")
	;

:root {
	--bg-primary: #000000;
	--bg-secondary: #111111;
	--text-primary: #ffffff;
	--text-secondary: #b0b0b0;
	--accent: #0a84ff;
	--success: #00ff00;
	--warning: #ffff00;
	--danger: #ff3b30;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Roboto", sans-serif;
	background-color: var(--bg-primary);
	color: var(--text-primary);
	line-height: 1.6;
	scrollbar-width: thin;
	scrollbar-color: #000000 #111111;
}

.container {
	display: flex;
	min-height: 100vh;
}

.sidebar {
	width: 250px;
	background-color: var(--bg-secondary);
	padding: 2rem;
	overflow-y: auto;
}

.logo {
	font-size: 1.5rem;
	font-weight: 700;
	margin-bottom: 2rem;
	color: var(--accent);
}

.main-content {
	flex: 1;
	padding: 2rem;
	overflow-y: scroll;
	height: 100vh;
}

h1, h2, h3 {
	margin-bottom: 1rem;
}

.form-group {
	margin-bottom: 1.5rem;
}

label {
	display: block;
	margin-bottom: 0.5rem;
	color: var(--text-secondary);
	font-weight: 500;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="number"],
	input[type="date"], textarea, select {
	width: 100%;
	padding: 0.75rem;
	border: 1px solid var(--text-secondary);
	border-radius: 4px;
	background-color: var(--bg-secondary);
	color: var(--text-primary);
	font-size: 1rem;
}

input:focus, textarea:focus, select:focus {
	outline: none;
	border-color: var(--accent);
}

button {
	background-color: var(--accent);
	color: var(--bg-primary);
	border: none;
	padding: 0.75rem 1.5rem;
	border-radius: 4px;
	cursor: pointer;
	font-size: 1rem;
	font-weight: 600;
	text-transform: uppercase;
	letter-spacing: 1px;
}

button:hover {
	background-color: #00cccc;
}

.section {
	background-color: var(--bg-secondary);
	border-radius: 8px;
	padding: 1.5rem;
	margin-bottom: 2rem;
}

.grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 1.5rem;
}

::-webkit-scrollbar {
	width: 12px;
	height: 12px;
}

::-webkit-scrollbar-track {
	background: #111111;
}

::-webkit-scrollbar-thumb {
	background-color: #000000;
	border-radius: 6px;
	border: 3px solid #111111;
}

.tostmessage {
	position: fixed;
	bottom: 5px;
	right: 60px;
	border: 1px solid white;
	padding: 40px 40px;
	border-radius: 7px;
	background-color: #111111;
}

input {
	transition: all 1s !important;
}

input:hover {
	scale: 1.1;
}

li {
	margin-bottom: 10px;
	transition: all 1s;
}

li:hover {
	background-color: #0D0D0D;
	scale: 1.2;
}
</style>
</head>
<body>
	<div class="container">
		<aside class="sidebar glassmorphism">

			<div class="logo glow">Tailoring Shop</div>
			<nav>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-dashboard-line"></i> <a href="dashboard"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">
						Dashboard</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-shield-user-line"></i> <a href="coustomer"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Customer
						Details</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-shirt-line"></i> <a href="coustomer#shirt"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Shirt
						Measurements</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-wheelchair-line"></i> <a href="coustomer#pant"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Pant
						Measurements</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-truck-line"></i> <a href="coustomer#order"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Order
						Details</a></li>
			</nav>
		</aside>

		<main class="main-content">
			<h1>${msg}</h1>
			<form action="getdata">


				<section id="customer" class="section">
					<h2>Customer Information</h2>
					<div class="grid">
						<div class="form-group">
							<label for="name">Name</label> <input type="text" id="name"
								name="name" placeholder="Enter your name" required />
						</div>
						<div class="form-group">
							<label for="email">Email</label> <input type="email" id="email"
								name="email" placeholder="Enter your email" required />
						</div>
						<div class="form-group">
							<label for="contact">Contact</label> <input type="tel"
								id="contact" name="contact"
								placeholder="Enter your contact number" required />
						</div>
						<div class="form-group">
							<label for="address">Address</label>
							<textarea id="address" name="address" rows="3"
								placeholder="Enter your address"></textarea>
						</div>
						<div class="form-group">
							<label for="status">Status</label> <select id="status"
								name="status">
								<option value="active">Active</option>
								<option value="inactive">Inactive</option>
							</select>
						</div>
					</div>
				</section>

				<section id="shirt" class="section">
					<h2>Shirt Measurements</h2>
					<div class="grid">
						<div class="form-group">
							<label for="shirt_type">Shirt Type</label> <input type="text"
								id="shirt_type" name="shirtDetails.shirtType"
								placeholder="e.g., Formal, Casual" />
						</div>
						<div class="form-group">
							<label for="shirt_chest">Chest</label> <input type="text"
								id="shirt_chest" name="shirtDetails.shirtChest"
								placeholder="e.g., 38 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_collar">Collar</label> <input type="text"
								id="shirt_collar" name="shirtDetails.shirtCollar"
								placeholder="e.g., 15 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_shoulder">Shoulder</label> <input type="text"
								id="shirt_shoulder" name="shirtDetails.shirtShoulder"
								placeholder="e.g., 18 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_sleeve">Sleeve</label> <input type="text"
								id="shirt_sleeve" name="shirtDetails.shirtSleeve"
								placeholder="e.g., 24 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_sleeve_cup">Sleeve Cup</label> <input
								type="text" id="shirt_sleeve_cup"
								name="shirtDetails.shirtSleeveCup" placeholder="e.g., 9 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_stomach">Stomach</label> <input type="text"
								id="shirt_stomach" name="shirtDetails.shirtStomach"
								placeholder="e.g., 34 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_loose">Loose</label> <input type="text"
								id="shirt_loose" name="shirtDetails.shirtLoose"
								placeholder="e.g., 2 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_height">Height</label> <input type="text"
								id="shirt_height" name="shirtDetails.shirtHeight"
								placeholder="e.g., 40 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_hand_loose">Hand Loose</label> <input
								type="text" id="shirt_hand_loose"
								name="shirtDetails.shirtHandLoose" placeholder="e.g., 3 inches" />
						</div>
						<div class="form-group">
							<label for="shirt_shape">Shape</label> <input type="text"
								id="shirt_shape" name="shirtDetails.shirtShape"
								placeholder="e.g., Slim Fit" />
						</div>
						<div class="form-group">
							<label for="shirt_quantity">Quantity</label> <input type="number"
								id="shirt_quantity" name="shirtDetails.shirtQuantity" min="1"
								placeholder="e.g., 1" />
						</div>
						<div class="form-group">
							<label for="shirt_rate">Rate</label> <input type="number"
								id="shirt_rate" name="shirtDetails.shirtRate" step="0.01"
								placeholder="e.g., 50.00" />
						</div>
						<div class="form-group">
							<label for="shirt_press">Press</label> <input type="text"
								id="shirt_press" name="shirtDetails.shirtPress"
								placeholder="e.g., Yes" />
						</div>
						<div class="form-group">
							<label for="shirt_other">Other Details</label>
							<textarea id="shirt_other" name="shirtDetails.shirtOther"
								rows="3" placeholder="e.g., Any specific requirements"></textarea>
						</div>
					</div>
				</section>



				<section id="pant" class="section">
					<h2>Pant Measurements</h2>
					<div class="grid">
						<div class="form-group">
							<label for="pant_type">Pant Type</label> <input type="text"
								id="pant_type" name="pantDetails.pantType"
								placeholder="e.g., Formal, Casual" />
						</div>
						<div class="form-group">
							<label for="pant_waist">Waist</label> <input type="text"
								id="pant_waist" name="pantDetails.pantWaist"
								placeholder="e.g., 32 inches" />
						</div>
						<div class="form-group">
							<label for="pant_seat">Seat</label> <input type="text"
								id="pant_seat" name="pantDetails.pantSeat"
								placeholder="e.g., 38 inches" />
						</div>
						<div class="form-group">
							<label for="pant_thigh">Thigh</label> <input type="text"
								id="pant_thigh" name="pantDetails.pantThigh"
								placeholder="e.g., 24 inches" />
						</div>
						<div class="form-group">
							<label for="pant_knee">Knee</label> <input type="text"
								id="pant_knee" name="pantDetails.pantKnee"
								placeholder="e.g., 20 inches" />
						</div>
						<div class="form-group">
							<label for="pant_legs_bottom">Legs Bottom</label> <input
								type="text" id="pant_legs_bottom"
								name="pantDetails.pantLegsBottom" placeholder="e.g., 16 inches" />
						</div>
						<div class="form-group">
							<label for="pant_height">Height</label> <input type="text"
								id="pant_height" name="pantDetails.pantHeight"
								placeholder="e.g., 42 inches" />
						</div>
						<div class="form-group">
							<label for="pant_shape">Shape</label> <input type="text"
								id="pant_shape" name="pantDetails.pantShape"
								placeholder="e.g., Slim Fit" />
						</div>
						<div class="form-group">
							<label for="pant_pocket">Pocket</label> <input type="text"
								id="pant_pocket" name="pantDetails.pantPocket"
								placeholder="e.g., 4 pockets" />
						</div>
						<div class="form-group">
							<label for="pant_tip">Tip</label> <input type="text"
								id="pant_tip" name="pantDetails.pantTip"
								placeholder="e.g., Zipper" />
						</div>
						<div class="form-group">
							<label for="pant_quantity">Quantity</label> <input type="number"
								id="pant_quantity" name="pantDetails.pantQuantity" min="1"
								placeholder="e.g., 2" />
						</div>
						<div class="form-group">
							<label for="pant_rate">Rate</label> <input type="number"
								id="pant_rate" name="pantDetails.pantRate" step="0.01"
								placeholder="e.g., 75.00" />
						</div>
						<div class="form-group">
							<label for="pant_press">Press</label> <input type="text"
								id="pant_press" name="pantDetails.pantPress"
								placeholder="e.g., Yes" />
						</div>
						<div class="form-group">
							<label for="pant_other">Other Details</label>
							<textarea id="pant_other" name="pantDetails.pantOther" rows="3"
								placeholder="e.g., Any specific requirements"></textarea>
						</div>
					</div>
				</section>


				<section id="order" class="section">
					<h2>Order Details</h2>
					<div class="grid">
						<div class="form-group">
							<label for="curr_date">Current Date</label> <input type="date"
								id="curr_date" name="receipts.currDate" required />
						</div>
						<div class="form-group">
							<label for="delivery_date">Delivery Date</label> <input
								type="date" id="delivery_date" name="receipts.deliveryDate"
								required />
						</div>
						<div class="form-group">
							<label for="order_status">Status</label> <select
								id="order_status" name="receipts.order_status">
								<option value="pending">Pending</option>
								<option value="in_progress">In Progress</option>
								<option value="completed">Completed</option>
							</select>
						</div>
						<div class="form-group">
							<label for="amount">Total Amount</label> <input type="number"
								id="amount" name="amount" step="0.01" readonly />
						</div>
						<div class="form-group">
							<label for="paid_amount">Paid Amount</label> <input type="number"
								id="paid_amount" name="paidAmount" step="0.01" />
						</div>
						<div class="form-group">
							<label for="pending_amount">Pending Amount</label> <input
								type="number" id="pending_amount" name="pendingAmount"
								step="0.01" readonly />
						</div>
					</div>
				</section>

				<button type="submit">Submit</button>
			</form>

			<div id="tost" class="tostmessage" style="display: ${render}";>
				<div style="text-align: right">
					<h3
						style="cursor: pointer; position: absolute; right: 10px; top: 5px"
						id="corss">
						<i class="ri-close-large-line"></i>
					</h3>
				</div>
				<div>
					<div
						style="display: flex; justify-content: space-between; gap: 20px; align-items: center;">
						<img src="right.svg" alt="" />
						<div>Data Added Successfully</div>
					</div>
				</div>
			</div>

		</main>
	</div>
	<script>
      const shirtQuantity = document.getElementById("shirt_quantity");
      const shirtRate = document.getElementById("shirt_rate");
      const pantQuantity = document.getElementById("pant_quantity");
      const pantRate = document.getElementById("pant_rate");
      const amount = document.getElementById("amount");
      const paidAmount = document.getElementById("paid_amount");
      const pendingAmount = document.getElementById("pending_amount");

      function calculateAmounts() {
        const shirtTotal = (shirtQuantity.value || 0) * (shirtRate.value || 0);
        const pantTotal = (pantQuantity.value || 0) * (pantRate.value || 0);
        const total = shirtTotal + pantTotal;
        amount.value = total.toFixed(2);

        const paid = parseFloat(paidAmount.value) || 0;
        pendingAmount.value = (total - paid).toFixed(2);
      }

      [shirtQuantity, shirtRate, pantQuantity, pantRate, paidAmount].forEach(
        (input) => {
          input.addEventListener("input", calculateAmounts);
        }
      );

      document.getElementById("curr_date").valueAsDate = new Date();
      
      document.getElementById("curr_date").valueAsDate = new Date();

      let tost = document.getElementById("tost")
     document.getElementById("corss").addEventListener("click", e=>{
       tost.style.display = "none"
    	   console.log("helo");
     })
     
      
     
    </script>
</body>
</html>

