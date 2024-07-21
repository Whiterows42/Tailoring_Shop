<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Details</title>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap")
	;

:root {
	--bg-primary: #000000;
	--bg-secondary: #111111;
	--text-primary: #ffffff;
	--text-secondary: #b0b0b0;
	--accent: #0A84FF;
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
	padding: 2rem;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	background-color: var(--bg-secondary);
	border-radius: 8px;
	padding: 2rem;
	box-shadow: 0 0 20px rgba(0, 255, 255, 0.1);
}

h1, h2, h3 {
	margin-bottom: 1rem;
	color: var(--accent);
}

h1 {
	font-size: 2.5rem;
	text-align: center;
	margin-bottom: 2rem;
}

.order-grid {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 2rem;
}

.order-section {
	background-color: rgba(255, 255, 255, 0.05);
	padding: 1.5rem;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.order-section h3 {
	font-size: 1.5rem;
	margin-bottom: 1rem;
	padding-bottom: 0.5rem;
	border-bottom: 2px solid var(--accent);
}

.info-grid {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	gap: 1rem;
}

.info-item {
	margin-bottom: 0.5rem;
}

.info-item strong {
	color: var(--accent);
	font-weight: 500;
}

.status-badge {
	display: inline-block;
	padding: 0.25rem 0.5rem;
	border-radius: 4px;
	font-weight: 500;
	text-transform: uppercase;
	font-size: 0.8rem;
}

.status-in-progress {
	background-color: var(--warning);
	color: var(--bg-primary);
}

.actions {
	margin-top: 2rem;
	display: flex;
	justify-content: center;
	gap: 1rem;
}

.btn {
	padding: 0.75rem 1.5rem;
	border: none;
	border-radius: 4px;
	font-weight: 500;
	text-transform: uppercase;
	cursor: pointer;
	transition: background-color 0.3s ease;
}
 a{
        text-decoration: none;
      }
.btn-primary {
	background-color: var(--accent);
	color: var(--bg-primary);
}

.btn-primary:hover {
	background-color: #00cccc;
}

.btn-secondary {
	background-color: var(--bg-primary);
	color: var(--text-primary);
	border: 1px solid var(--accent);
}

.btn-secondary:hover {
	background-color: var(--accent);
	color: var(--bg-primary);
}
</style>
</head>
<body>
	<div class="container">
		<h1>Customer Details</h1>

		<div class="order-grid">
			<c:forEach var="customer" items="${customer}">
				<section class="order-section">
					<h3>Customer Information</h3>
					<div class="info-grid">
						<div class="info-item">
							<strong>ID:</strong> ${customer.id}
						</div>
						<div class="info-item">
							<strong>Name:</strong> ${customer.name}
						</div>
						<div class="info-item">
							<strong>Email:</strong> ${customer.email}
						</div>
						<div class="info-item">
							<strong>Contact:</strong> ${customer.contact}
						</div>
						<div class="info-item">
							<strong>Address:</strong> ${customer.address}
						</div>
						<div class="info-item">
							<strong>Status:</strong> <span class="status-badge">${customer.status}</span>
						</div>
					</div>
				</section>

				<section class="order-section">
					<h3>Payment Information</h3>
					<div class="info-grid">
						<div class="info-item">
							<strong>Total Amount:</strong> ₹${customer.amount}
						</div>
						<div class="info-item">
							<strong>Paid Amount:</strong> ₹${customer.paidAmount}
						</div>
						<div class="info-item">
							<strong>Pending Amount:</strong> ₹${customer.pendingAmount}
						</div>
					</div>
				</section>

				<section class="order-section">
					<h3>Shirt Details</h3>
					<div class="info-grid">
						<div class="info-item">
							<strong>Type:</strong> ${customer.shirtDetails.shirtType}
						</div>
						<div class="info-item">
							<strong>Quantity:</strong> ${customer.shirtDetails.shirtQuantity}
						</div>
						<div class="info-item">
							<strong>Rate:</strong> ₹${customer.shirtDetails.shirtRate}
						</div>
						<div class="info-item">
							<strong>Chest:</strong> ${customer.shirtDetails.shirtChest}
						</div>
						<div class="info-item">
							<strong>Collar:</strong> ${customer.shirtDetails.shirtCollar}
						</div>
						<div class="info-item">
							<strong>Sleeve:</strong> ${customer.shirtDetails.shirtSleeve}
						</div>
						<div class="info-item">
							<strong>Shoulder:</strong> ${customer.shirtDetails.shirtShoulder}
						</div>
						<div class="info-item">
							<strong>Height:</strong> ${customer.shirtDetails.shirtHeight}
						</div>
						<div class="info-item">
							<strong>Loose:</strong> ${customer.shirtDetails.shirtLoose}
						</div>
						<div class="info-item">
							<strong>Hand Loose:</strong>
							${customer.shirtDetails.shirtHandLoose}
						</div>
						<div class="info-item">
							<strong>Stomach:</strong> ${customer.shirtDetails.shirtStomach}
						</div>
						<div class="info-item">
							<strong>Shape:</strong> ${customer.shirtDetails.shirtShape}
						</div>
						<div class="info-item">
							<strong>Press:</strong> ${customer.shirtDetails.shirtPress}
						</div>
						<div class="info-item">
							<strong>Other:</strong> ${customer.shirtDetails.shirtOther}
						</div>
					</div>
				</section>

				<section class="order-section">
					<h3>Pant Details</h3>
					<div class="info-grid">
						<div class="info-item">
							<strong>Type:</strong> ${customer.pantDetails.pantType}
						</div>
						<div class="info-item">
							<strong>Quantity:</strong> ${customer.pantDetails.pantQuantity}
						</div>
						<div class="info-item">
							<strong>Rate:</strong> ₹${customer.pantDetails.pantRate}
						</div>
						<div class="info-item">
							<strong>Waist:</strong> ${customer.pantDetails.pantWaist}
						</div>
						<div class="info-item">
							<strong>Height:</strong> ${customer.pantDetails.pantHeight}
						</div>
						<div class="info-item">
							<strong>Seat:</strong> ${customer.pantDetails.pantSeat}
						</div>
						<div class="info-item">
							<strong>Thigh:</strong> ${customer.pantDetails.pantThigh}
						</div>
						<div class="info-item">
							<strong>Knee:</strong> ${customer.pantDetails.pantKnee}
						</div>
						<div class="info-item">
							<strong>Legs Bottom:</strong>
							${customer.pantDetails.pantLegsBottom}
						</div>
						<div class="info-item">
							<strong>Shape:</strong> ${customer.pantDetails.pantShape}
						</div>
						<div class="info-item">
							<strong>Pocket:</strong> ${customer.pantDetails.pantPocket}
						</div>
						<div class="info-item">
							<strong>Press:</strong> ${customer.pantDetails.pantPress}
						</div>
						<div class="info-item">
							<strong>Other:</strong> ${customer.pantDetails.pantOther}
						</div>
					</div>
				</section>

				<section class="order-section">
					<h3>Receipt Information</h3>
					<div class="info-grid">
						
						<div class="info-item">
							<strong>Order Date:</strong> ${customer.receipts.currDate}
						</div>
						<div class="info-item">
							<strong>Delivery Date:</strong> ${customer.receipts.deliveryDate}
						</div>
						<div class="info-item">
							<strong>Status:</strong> <span class="status-badge">${customer.receipts.order_status}</span>
						</div>
					</div>
				</section>
		</div>
		</c:forEach>
		<div class="actions">
			<button class="btn btn-primary">Update Order</button>
			<a class="btn btn-secondary" href="dashboard">Back to Dashboard</a>
		</div>


	</div>
</body>
</html>
