<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Admin Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />

<style>
@import
	url("https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap")
	;

:root {
	--bg-primary: #000000;
	--bg-secondary: #1c1c1e;
	--text-primary: #ffffff;
	--text-secondary: #8e8e93;
	--accent: #0a84ff;
	--success: #30d158;
	--warning: #ffd60a;
	--danger: #ff453a;
	--border: #38383a;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Inter", sans-serif;
	background-color: var(--bg-primary);
	color: var(--text-primary);
	line-height: 1.6;
	overflow-x: hidden;
}

a {
	text-decoration: none;
}

.container {
	display: flex;
	min-height: 100vh;
}

.sidebar {
	width: 250px;
	background-color: var(--bg-secondary);
	padding: 2rem;
	border-right: 1px solid var(--border);
}

.logo {
	font-size: 1.5rem;
	font-weight: 700;
	margin-bottom: 2rem;
	color: var(--accent);
}

.nav-item {
	margin-bottom: 1rem;
}

.nav-link {
	color: var(--text-secondary);
	text-decoration: none;
	font-weight: 500;
	transition: color 0.3s ease;
}

.nav-link:hover, .nav-link.active {
	color: var(--text-primary);
}

.main-content {
	flex: 1;
	padding: 2rem;
	overflow-y: auto;
}

h1 {
	font-size: 2rem;
	margin-bottom: 1.5rem;
}

.stats-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	gap: 1.5rem;
	margin-bottom: 2rem;
}

.stat-card {
	background-color: var(--bg-secondary);
	border-radius: 12px;
	padding: 1.5rem;
	text-align: center;
}

.stat-card h3 {
	font-size: 2rem;
	margin-bottom: 0.5rem;
}

.stat-card p {
	color: var(--text-secondary);
	font-size: 0.9rem;
}

.data-table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 0.5rem;
}

.data-table th, .data-table td {
	background-color: var(--bg-secondary);
	padding: 1rem;
	text-align: left;
}

.data-table th {
	font-weight: 600;
	color: var(--text-secondary);
}

.data-table tr:hover td {
	background-color: rgba(255, 255, 255, 0.05);
}

.status {
	display: inline-block;
	padding: 0.25rem 0.5rem;
	border-radius: 4px;
	font-size: 0.8rem;
	font-weight: 500;
}

.status-pending {
	background-color: var(--warning);
	color: var(--bg-primary);
}

.status-completed {
	background-color: var(--success);
	color: var(--bg-primary);
}

.status-in_progress {
	background-color: #0A84FF;
	color: var(--bg-primary);
}

.btn {
	background-color: var(--accent);
	color: var(--text-primary);
	border: none;
	padding: 0.5rem 1rem;
	border-radius: 6px;
	font-weight: 500;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: #0071e3;
}

@media ( max-width : 768px) {
	.container {
		flex-direction: column;
	}
	.sidebar {
		width: 100%;
		border-right: none;
		border-bottom: 1px solid var(--border);
	}
	.main-content {
		padding: 1rem;
	}
}

/* Vision Pro Specific Styles */
.glassmorphism {
	background: rgba(255, 255, 255, 0.05);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	border: 1px solid rgba(255, 255, 255, 0.1);
}

.hover-effect {
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.hover-effect:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
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
					class="ri-shield-user-line"></i> <a href="cm"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Customer
						Details</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-shirt-line"></i> <a href="cm#shirt"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Shirt
						Measurements</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-wheelchair-line"></i> <a href="cm#pant"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Pant
						Measurements</a></li>
				<li style="display: flex; align-items: center; gap: 5px"><i
					class="ri-truck-line"></i> <a href="cm#order"
					style="color: var(--text-primary); text-decoration: none; display: block; padding: 0.5rem 0;">Order
						Details</a></li>
			</nav>
		</aside>

		<main class="main-content">
			<div
				style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 14px;">
				<h1>${admin.first_name}</h1>
				<div
					style="text-align: center; padding: 20px; display: flex; align-items: center;">
					<img width="100" height="100"
						style="border-radius: 50%; padding: 10px; background-color: #38383a; object-fit: contain; cursor: ;"
		speak-punctuation: 			src="<c:url value='/resources/image/${admin.orignalename}' />"
						alt="Admin Image"> <a href="logout" title="Log out"
						style="display: inline-block; margin-top: 10px;"> <i
						style="font-size: 30px; color: red; padding: 10px; font-weight: 900; cursor: pointer;"
						class="ri-logout-box-fill"></i>
					</a>
				</div>


			</div>

			<div class="stats-grid">
				<div class="stat-card glassmorphism hover-effect">
					<h3>${ count }</h3>
					<p>Total Customers</p>
				</div>
				<div class="stat-card glassmorphism hover-effect">
					<h3>${ordercount}</h3>
					<p>Active Orders</p>
				</div>
				<div class="stat-card glassmorphism hover-effect">
					<h3>
						<c:forEach var="entry" items="${revenueData}">
							<tr>
								<td>₹ ${entry.value}</td>
							</tr>
						</c:forEach>
					</h3>
					<p>Monthly Revenue</p>
				</div>
				<div class="stat-card glassmorphism hover-effect">
					<h3>95%</h3>
					<p>Customer Satisfaction</p>
				</div>
			</div>

			<h2>Recent Orders</h2>
			<table class="data-table">
				<thead>
					<tr>
						<th>Order ID</th>
						<th>Customer</th>
						<th>Items</th>
						<th>Total</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="customer" items="${customers}">
						<tr>
							<td>${customer.id}</td>
							<td>${customer.name	}</td>
							<td><c:if test="${not empty customer.shirtDetails}">
                            ${customer.shirtDetails.shirtQuantity} Shirt
                        </c:if> <c:if test="${not empty customer.pantDetails}">
                            ${customer.pantDetails.pantQuantity} Pants
                        </c:if></td>
							<td>${customer.amount}</td>
							<td><span
								class="status status-${customer.receipts.order_status.toLowerCase()}">
									${customer.receipts.order_status} </span></td>
							<!-- <td><button class="btn">  View Details</button></td> -->
							<td><a href="viewdetails?id=${customer.id}" class="btn">View
									Details</a></td>

						</tr>
					</c:forEach>

					<!--  <tr>
              <td>#1001</td>
              <td>John Doe</td>
              <td>2 Shirts, 1 Pant</td>
              <td>$250</td>
              <td><span class="status status-pending">Pending</span></td>
              <td><button class="btn">View Details</button></td>
            </tr>
            <tr>
              <td>#1002</td>
              <td>Jane Smith</td>
              <td>1 Shirt, 2 Pants</td>
              <td>$320</td>
              <td><span class="status status-completed">Completed</span></td>
              <td><button class="btn">View Details</button></td>
            </tr>
            <tr>
              <td>#1003</td>
              <td>Mike Johnson</td>
              <td>3 Shirts</td>
              <td>$180</td>
              <td><span class="status status-pending">Pending</span></td>
              <td><button class="btn">View Details</button></td>
            </tr> -->
				</tbody>
			</table>

			<h2>Quick Actions</h2>
			<div style="display: flex; gap: 1rem; margin-top: 1rem">
				<button class="btn glassmorphism hover-effect">Add New
					Customer</button>
				<button class="btn glassmorphism hover-effect">Create New
					Order</button>
				<button class="btn glassmorphism hover-effect">Generate
					Report</button>
			</div>
		</main>
	</div>

	<script>
   

      const tableRows = document.querySelectorAll(".data-table tbody tr");
      tableRows.forEach((row) => {
        row.addEventListener("mouseover", () => {
          row.style.transform = "scale(1.02)";
          row.style.transition = "transform 0.3s ease";
        });
        row.addEventListener("mouseout", () => {
          row.style.transform = "scale(1)";
        });
      });

     

      
    
    </script>
</body>
</html>
