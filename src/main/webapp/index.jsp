<html>
  <head>
    <title>Tailoring Shop - Bespoke Tailoring Excellence</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Roboto:wght@300;400;500&display=swap");

      :root {
        --bg-primary: #000000;
        --bg-secondary: #111111;
        --text-primary: #ffffff;
        --text-secondary: #b0b0b0;
        --accent: #00ffff;
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
      }

      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 2rem;
      }

      header {
        padding: 2rem 0;
      }

      nav ul {
        display: flex;
        justify-content: flex-end;
        list-style-type: none;
      }

      nav ul li {
        margin-left: 2rem;
      }

      nav ul li a {
        color: var(--text-primary);
        text-decoration: none;
        font-weight: 500;
        transition: color 0.3s ease;
      }

      nav ul li a:hover {
        color: var(--accent);
      }

      .hero {
        height: 80vh;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
          url("tailoring-background.jpg") no-repeat center center/cover;
      }

      .hero-content h1 {
        font-family: "Playfair Display", serif;
        font-size: 4rem;
        margin-bottom: 1rem;
      }

      .hero-content p {
        font-size: 1.2rem;
        max-width: 600px;
        margin: 0 auto 2rem;
      }

      .btn {
        display: inline-block;
        background-color: var(--accent);
        color: var(--bg-primary);
        padding: 0.75rem 1.5rem;
        text-decoration: none;
        font-weight: 500;
        border-radius: 4px;
        transition: background-color 0.3s ease;
      }

      .btn:hover {
        background-color: #00cccc;
      }

      .features {
        padding: 4rem 0;
      }

      .features h2 {
        text-align: center;
        font-family: "Playfair Display", serif;
        font-size: 2.5rem;
        margin-bottom: 3rem;
      }

      .feature-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 2rem;
      }

      .feature {
        background-color: var(--bg-secondary);
        padding: 2rem;
        border-radius: 8px;
        text-align: center;
      }

      .feature i {
        font-size: 3rem;
        color: var(--accent);
        margin-bottom: 1rem;
      }

      .feature h3 {
        font-family: "Playfair Display", serif;
        margin-bottom: 1rem;
      }

      footer {
        background-color: var(--bg-secondary);
        padding: 2rem 0;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <header>
      <div class="container">
        <nav>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#features">Features</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li>
              <a href="https://tailorpro.vision/app" class="btn">Login</a>
            </li>
          </ul>
        </nav>
      </div>
    </header>

    <main>
      <section id="home" class="hero">
        <div class="hero-content">
          <h1>Tailoring Shop</h1>
          <p>
            Experience the future of bespoke tailoring with our cutting-edge
            management system.
          </p>
          <a href="coustomer" class="btn">Get Started</a>
        </div>
      </section>

      <section id="features" class="features">
        <div class="container">
          <h2>Our Features</h2>
          <div class="feature-grid">
            <div class="feature">
              <i class="fas fa-tape"></i>
              <h3>Precise Measurements</h3>
              <p>
                Capture and store detailed measurements for shirts and pants
                with ease.
              </p>
            </div>
            <div class="feature">
              <i class="fas fa-users"></i>
              <h3>Customer Management</h3>
              <p>
                Keep track of your clients' information and order history
                effortlessly.
              </p>
            </div>
            <div class="feature">
              <i class="fas fa-chart-line"></i>
              <h3>Order Tracking</h3>
              <p>
                Monitor the status of each order from initiation to delivery.
              </p>
            </div>
            <div class="feature">
              <i class="fas fa-calculator"></i>
              <h3>Automatic Calculations</h3>
              <p>
                Let our system handle pricing and payment calculations for you.
              </p>
            </div>
            <div class="feature">
              <i class="fas fa-mobile-alt"></i>
              <h3>Mobile Friendly</h3>
              <p>Access your tailoring business data anytime, anywhere.</p>
            </div>
            <div class="feature">
              <i class="fas fa-lock"></i>
              <h3>Secure &amp; Reliable</h3>
              <p>
                Your data is protected with state-of-the-art security measures.
              </p>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer>
      <div class="container">
        <p>&copy; 2023 Tailor All rights reserved.</p>
      </div>
    </footer>

    <script
      src="https://kit.fontawesome.com/your-fontawesome-kit.js"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
